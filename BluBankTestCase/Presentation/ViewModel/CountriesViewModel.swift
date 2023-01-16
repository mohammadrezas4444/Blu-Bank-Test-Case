//
//  CountriesViewModel.swift
//  BluTestCase
//
//  Created by Mohammad Reza Sohrabi on 1/16/23.
//

import Foundation
import Combine

class CountriesViewModel: ObservableObject {
    
    var getCountriesUseCase = GetCountries(repo: InMemoryCountriesRepository(countriesApi: CountriesApiImplementation()))
    
    @Published var countries: [Country] = []
    @Published var errorMessage = ""
    @Published var hasError = false
    
    private var countriesChangeCanceller: AnyCancellable?
    
    func getCountries() async {
        let result = await getCountriesUseCase.execute()
        switch result {
        case .success(let countries):
            self.countries = countries            
        case .failure(let error):
            countries = []
            errorMessage = error.localizedDescription
            hasError = true
        }
    }
}
