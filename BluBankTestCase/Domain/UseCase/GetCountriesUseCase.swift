//
//  GetCountriesUseCase.swift
//  BluTestCase
//
//  Created by Mohammad Reza Sohrabi on 1/16/23.
//

import Foundation

protocol GetCountriesUseCase {
    func execute() async -> Result<[Country], UseCaseError>
}

struct GetCountries: GetCountriesUseCase {
    
    let repo: CountriesRepository
    
    func execute() async -> Result<[Country], UseCaseError> {
        
        do {
            
            let countries = try await repo.getCountries()
            return .success(countries)
            
        } catch(let error) {
            
            switch error {
            case APIServiceError.decodingError:
                return .failure(.decodingError)
            default:
                return .failure(.networkError)
            }
            
        }
    }
}
