//
//  HTTPStatusCode.swift
//  OpenTripMapAPI
//
//  Created by Serhiy Butz on 5/26/21
//  Copyright © Serhiy Butz 2021
//  MIT license, see LICENSE file for details
//

public struct HTTPStatusCode {

    public enum ResponseClass: Int {
        
        case informational = 1
        case successful = 2
        case redirection = 3
        case clientError = 4
        case serverError = 5
    }

    public let code: Int
    public let responseClass: ResponseClass

    public init?(_ code: Int) {

        guard let `class` = ResponseClass(rawValue: code / 100) else { return nil }

        self.code = code
        self.responseClass = `class`
    }
}
