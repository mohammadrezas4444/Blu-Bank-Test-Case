//
//  CountriesApi.swift
//  BluTestCase
//
//  Created by Mohammad Reza Sohrabi on 1/16/23.
//

import Foundation

protocol CountriesApi {
    
    func getCountries() async throws -> [Country]
}

struct CountriesApiImplementation: CountriesApi {
    
    func getCountries() async throws -> [Country] {
        
        guard let url = URL(string: "https://restcountries.com/v3.1/all") else {
            throw APIServiceError.badUrl
        }
        
        guard let (data, response) = try? await URLSession.shared.data(from: url) else {
            throw APIServiceError.requestError
        }
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw APIServiceError.statusNotOK
        }
        
        guard let result = try? JSONDecoder().decode([CountryApiEntity].self, from: data) else {
            throw APIServiceError.decodingError
        }
        
        return result.map { country in
            Country(id: (0 ... 100_000).randomElement()!, name: country.name?.official ?? "Not Fetched")
        }
    }
}
