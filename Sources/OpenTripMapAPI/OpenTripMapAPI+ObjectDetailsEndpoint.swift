//
//  OpenTripMapAPI+ObjectDetailsEndpoint.swift
//  OpenTripMapAPI
//
//  Created by Serhiy Butz on 5/26/21
//  Copyright © Serhiy Butz 2021
//  MIT license, see LICENSE file for details
//

import Foundation

/// Returns detailed information about the object. Objects can contain different amount of information..
extension OpenTripMapAPI {

    struct ObjectDetailsEndpoint {
        
        var url: URL? {

            var components = URLComponents()
            components.scheme = "https"
            components.host = host
            components.path = path
            components.queryItems = queryItems
            return components.url
        }

        var host: String { "api.opentripmap.com" }

        var path: String { "/\(apiVersion)/\(langStr)/places/xid/\(xid)" }

        let apiVersion: String = "0.1"

        var queryItems: [URLQueryItem] {

            [
                URLQueryItem(name: "apikey", value: apikey)
            ]
        }

        // (Required params)

        let apikey: String
        
        /// Language code (2 characters, ISO639-1) {path}
        let lang: ISO639LanguageCode

        var langStr: String { "\(String(describing: lang).lowercased())" }

        /// Unique identifier of the object in OpenTripMap
        let xid: String
        
        init(apikey: String,
             xid: String,
             lang: ISO639LanguageCode = .en
        ) {

            self.apikey = apikey
            self.xid = xid
            self.lang = lang
        }
    }
}
