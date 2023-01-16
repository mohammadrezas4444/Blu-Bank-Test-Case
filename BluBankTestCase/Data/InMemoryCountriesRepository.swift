//
//  InMemoryCountriesRepository.swift
//  BluTestCase
//
//  Created by Mohammad Reza Sohrabi on 1/16/23.
//

import Foundation

struct InMemoryCountriesRepository: CountriesRepository {
    
    let countriesApi: CountriesApi
    
    func getCountries() async throws -> [Country] {
        return try await countriesApi.getCountries()
    }
}
