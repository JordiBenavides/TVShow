//
//  TVShowAPI.swift
//  TVShow
//
//  Created by Jordi Milla on 11/11/2020.
//  Copyright © 2020 Jordi Milla Catalan. All rights reserved.
//

import Foundation
import Moya

enum TVShowAPI {
    case tvShow
}

extension TVShowAPI:TargetType,AccessTokenAuthorizable {
    public var baseURL: URL {  return URL(string: "http://api.tvmaze.com/")!}
    
    public var path: String {
        switch self {
        case .tvShow:
            return "shows"
        }
        
    }
    
    var method: Moya.Method {
        switch self {
        case .tvShow:
            return .get
        }
    }
    
    var authorizationType: AuthorizationType {
        switch self {
        case .tvShow:
            return .bearer
        }
    }
    
    public var task: Task {
        switch self {
        case .tvShow:
            return .requestPlain
        }
    }
    
    public var validationType: ValidationType {
        return .none
    }
    
    public var sampleData: Data {
        return "".data(using: String.Encoding.utf8)!
    }
    
    public var headers: [String: String]? {
        return nil
    }
}
