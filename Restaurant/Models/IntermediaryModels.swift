//
//  IntermediaryModels.swift
//  Restaurant
//
//  Created by Armando Carrillo on 04/08/20.
//  Copyright © 2020 Armando Carrillo. All rights reserved.
//
// API return a list of categories

import Foundation

struct Categories: Codable {
    let categories: [String]
}

struct PreparationTime: Codable{
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
