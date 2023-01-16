//
//  InMemoryCountriesRepository.swift
//  BluTestCase
//
//  Created by Mohammad Reza Sohrabi on 1/16/23.
//

import Foundation

enum APIServiceError: Error{
    case badUrl, requestError, decodingError, statusNotOK
}

struct InMemoryCountriesRepository: CountriesRepository {
    
    let countriesApi: CountriesApi
    var selectedCountries: [Country] = []
    
    func getCountries() async throws -> [Country] {
        return try await countriesApi.getCountries()
    }
}
