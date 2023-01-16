//
//  CountriesRepository.swift
//  BluTestCase
//
//  Created by Mohammad Reza Sohrabi on 1/16/23.
//

import Foundation

protocol CountriesRepository {
    
    func getCountries() async throws -> [Country]
}
