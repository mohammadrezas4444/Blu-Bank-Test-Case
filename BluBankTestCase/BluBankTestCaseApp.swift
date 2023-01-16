//
//  BluBankTestCaseApp.swift
//  BluBankTestCase
//
//  Created by Mohammad Reza Sohrabi on 1/16/23.
//

import SwiftUI

@main
struct BluBankTestCaseApp: App {
    
    let viewModel = CountriesViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                SelectedCountryListView()
            }.navigationViewStyle(StackNavigationViewStyle())
                .environmentObject(viewModel)
        }
    }
}
