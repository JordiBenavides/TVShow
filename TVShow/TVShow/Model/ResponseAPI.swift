//
//  ResponseAPI.swift
//  TVShow
//
//  Created by Jordi Milla on 11/11/2020.
//  Copyright © 2020 Jordi Milla Catalan. All rights reserved.
//

import Foundation

struct ResponseAPI: Codable {
    
    let id: Int
    let url: String
    let name: String
    let type: String
    let language: String
}
