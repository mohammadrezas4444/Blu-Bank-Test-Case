//
//  SelectedCountryListView.swift
//  BluBankTestCase
//
//  Created by Mohammad Reza Sohrabi on 1/16/23.
//

import SwiftUI

struct SelectedCountryListView: View {
    
    @EnvironmentObject var viewModel: CountriesViewModel
    
    private func countryView(_ country: Country) -> some View {
        HStack {
            Image(systemName: "checkmark.circle")
                .foregroundColor(.green)
            Text("\(country.name)")
        }
    }
    
    private func countryList() -> some View {
        List {
            ForEach(Array(viewModel.countries.enumerated()), id: \.element) { index, element in
                if element.isSelected {
                    countryView(element)
                }
            }
        }
    }
    
    private func selectCountry() -> some View {
        VStack {
            NavigationLink(destination: CountriesListView().environmentObject(viewModel)) {
                Text("Select Countries!")
            }
        }
        .padding()
        .background(Color(red: 0, green: 0, blue: 0.5))
        .clipShape(Capsule())
        .foregroundColor(.white)
    }
    
    var body: some View {
        VStack {
            selectCountry().padding()
            countryList()
        }
    }
}

struct SelectedCountryListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SelectedCountryListView().environmentObject(CountriesViewModel())
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
