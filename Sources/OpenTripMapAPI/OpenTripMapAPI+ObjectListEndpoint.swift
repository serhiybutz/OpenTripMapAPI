//
//  OpenTripMapAPI+ObjectListEndpoint.swift
//  OpenTripMapAPI
//
//  Created by Serge Bouts on 5/26/21
//  Copyright © Serge Bouts 2021
//  MIT license, see LICENSE file for details
//

import Foundation

/// Returns all objects (or number of objects) in the given bounding box optionally filtered by parameters. Only basic information is include in response: xid, name, kinds, osm, wikidata and geometry of each object. Depending on the chosen format, the response is either a simple array of objects (with a smaller volume) or an object in GeoJSON format.
extension OpenTripMapAPI {

    struct ObjectListEndpoint {

        var url: URL? {

            var components = URLComponents()
            components.scheme = "https"
            components.host = host
            components.path = path
            components.queryItems = queryItems
            return components.url
        }

        var host: String { "api.opentripmap.com" }

        var path: String { "/\(apiVersion)/\(langStr)/places/bbox" }

        let apiVersion: String = "0.1"

        var queryItems: [URLQueryItem] {

            var queryItems = [
                URLQueryItem(name: "apikey", value: apikey),
                URLQueryItem(name: "lon_min", value: "\(boundingBox.lonMin)"),
                URLQueryItem(name: "lon_max", value: "\(boundingBox.lonMax)"),
                URLQueryItem(name: "lat_min", value: "\(boundingBox.latMin)"),
                URLQueryItem(name: "lat_max", value: "\(boundingBox.latMax)")
            ]
            if let srcGeom = srcGeom {
                queryItems.append(URLQueryItem(name: "src_geom", value: "\(srcGeom)"))
            }
            if let srcAttr = srcAttr {
                queryItems.append(URLQueryItem(name: "src_attr", value: "\(srcAttr)"))
            }
            if let kinds = kinds {
                queryItems.append(URLQueryItem(name: "kinds", value: "\(kinds)"))
            }
            if let name = name {
                queryItems.append(URLQueryItem(name: "name", value: "\(name)"))
            }
            if let rate = rate {
                queryItems.append(URLQueryItem(name: "rate", value: "\(rate)"))
            }
            if let format = format {
                queryItems.append(URLQueryItem(name: "format", value: "\(format)"))
            }
            if let limit = limit {
                queryItems.append(URLQueryItem(name: "limit", value: "\(limit)"))
            }
            return queryItems
        }

        // (Required params)

        let apikey: String
        
        /// Language code (2 characters, ISO639-1) {path}
        let lang: ISO639LanguageCode

        var langStr: String { "\(String(describing: lang).lowercased())" }

        /// Bounding box
        let boundingBox: BoundingBox

        // (Optional params)
        
        /// The source of the object geometry. Objects from all sources are returned by default.
        let srcGeom: SrcGeom?
        
        /// The source of the object attributes. It is allowed to point multiple sources separated by commas. Objects from all sources are returned by default.
        let srcAttr: SrcAttr?
        
        /// Object category. Several comma-separated categories may be stated with OR logic. see List of categories. Objects from `interesting_places` category are returned by default
        let kinds: Kinds?

        /// The text string on which to search at the begining of the object name (mimimum 3 characters). All objects are returned by default.
        let name: NamePrefix?

        /// Minimum rating of the object popularity, 1 - minimum, 3 - maximum, h - object is referred to the cultural heritage. Objects from all ratings are returned by default.
        let rate: Rate?

        /// The output format (GeoJSON is set by default). Specify “count” to get the number of obtained objects
        let format: Format?

        /// MMaximum number of returned objects. 500 is set by default.
        let limit: Int?
        
        init(apikey: String,
             lang: ISO639LanguageCode = .en,
             boundingBox: BoundingBox,
             srcGeom: SrcGeom? = nil,
             srcAttr: SrcAttr? = nil,
             kinds: Kinds? = nil,
             name: NamePrefix? = nil,
             rate: Rate? = nil,
             format: Format? = nil,
             limit: Int? = nil
        ) {

            self.apikey = apikey
            self.lang = lang
            self.boundingBox = boundingBox
            self.srcGeom = srcGeom
            self.srcAttr = srcAttr
            self.kinds = kinds
            self.name = name
            self.rate = rate
            self.format = format
            self.limit = limit
        }
    }
}
