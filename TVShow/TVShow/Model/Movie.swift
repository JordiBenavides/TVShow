//
//  ResponseAPI.swift
//  TVShow
//
//  Created by Jordi Milla on 11/11/2020.
//  Copyright © 2020 Jordi Milla Catalan. All rights reserved.
//

import Foundation

struct Movie: Codable {
    
    let id: Int
    let url: String
    let name: String
    let type: String
    let images: Image
}

struct Image: Codable {
    
    let medium: String
    let original: String
}
