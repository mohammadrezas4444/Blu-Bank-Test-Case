//
//  Model.swift
//  BluTestCase
//
//  Created by Mohammad Reza Sohrabi on 1/16/23.
//

import Foundation

struct Country: Identifiable, Hashable {
    
    let id: Int
    let name: String
    var isSelected: Bool = false
}
