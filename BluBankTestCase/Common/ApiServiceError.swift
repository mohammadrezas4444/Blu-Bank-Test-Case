//
//  ApiServiceError.swift
//  BluBankTestCase
//
//  Created by Mohammad Reza Sohrabi on 1/17/23.
//

import Foundation

enum APIServiceError: Error{
    case badUrl, requestError, decodingError, statusNotOK
}
