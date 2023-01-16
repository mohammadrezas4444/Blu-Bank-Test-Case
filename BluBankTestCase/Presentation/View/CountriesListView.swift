//
//  ContentView.swift
//  BluBankTestCase
//
//  Created by Mohammad Reza Sohrabi on 1/16/23.
//

import SwiftUI

struct CountriesListView: View {
    
    @EnvironmentObject var viewModel: CountriesViewModel
    @State private var searchText = ""
    
    var searchResults: [Country] {
        if searchText.isEmpty {
            return viewModel.countries
        } else {
            return viewModel.countries.filter { $0.name.contains(searchText) }
        }
    }
    
    private func countryView(_ country: Country, onSelect: @escaping () -> Void) -> some View {
        HStack {
            Image(systemName: country.isSelected ? "checkmark.circle": "circle")
                .foregroundColor(country.isSelected ? .green : .red)
                .transition(.scale.animation(.easeOut))
            Text("\(country.name)")
        }.onTapGesture {
            onSelect()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private func countryList() -> some View {
        List {
            ForEach(searchResults) { country in
                countryView(country) {
                    if let index = viewModel.countries.firstIndex(of: country) {
                        viewModel.countries[index].isSelected = !country.isSelected
                    }
                }
                
            }
        }.refreshable {
            await viewModel.getCountries()
        }
        .searchable(text: $searchText, prompt: "Look for something")
        .navigationTitle("Country List")
        .task {
            if viewModel.countries.isEmpty {
                await viewModel.getCountries()
            }
        }
        .alert("Error", isPresented: $viewModel.hasError) {
        } message: {
            Text(viewModel.errorMessage)
        }
    }
    
    var body: some View {
        countryList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CountriesListView().environmentObject(CountriesViewModel())
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
