//
//  OpenTripMapAPI+Error.swift
//  OpenTripMapAPI
//
//  Created by Serge Bouts on 5/26/21
//  Copyright © Serge Bouts 2021
//  MIT license, see LICENSE file for details
//

import Foundation

extension OpenTripMapAPI {

    public enum Error: Swift.Error {

        /// Invalid request, e.g. invalid URL
        case invalidRequest(String)

        /// Indicates an error on the transport layer, e.g. not being able to connect to the server
        case transport(URLError)

        /// Received an invalid response, e.g. non-HTTP result
        case invalidResponse(URLResponse)

        /// Received an invalid status code
        case invalidStatusCode(Int)

        /// The server sent data in an unexpected format
        case decoding(Swift.Error)

        /// General server-side error.
        case server(statusCode: HTTPStatusCode)

        case other(statusCode: HTTPStatusCode, data: Data)
    }
}

extension OpenTripMapAPI.Error: LocalizedError {

    public var errorDescription: String? {

        switch self {
        case .invalidRequest(let description): return "Invalid request: \(description)"
        case .transport(let error): return "Transport error: \(error)"
        case .invalidResponse(let data): return "Invalid response: \(data)"
        case .invalidStatusCode(let number): return "Invalid status code: \(number)"
        case .decoding: return "The server returned data in an unexpected format. Try updating the app."
        case .server(let statusCode): return "Server error, status code: \(statusCode.code)"
        case .other(let statusCode, _): return "Other error, status code: \(statusCode.code)"
        }
    }
}