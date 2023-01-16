//
//  ContentView.swift
//  BluBankTestCase
//
//  Created by Mohammad Reza Sohrabi on 1/16/23.
//

import SwiftUI

struct CountriesListView: View {
    
    @EnvironmentObject var viewModel: CountriesViewModel
    
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
            ForEach(Array(viewModel.countries.enumerated()), id: \.element) { index, element in
                countryView(element) {
                    viewModel.countries[index].isSelected = !element.isSelected
                }
            }
        }
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
