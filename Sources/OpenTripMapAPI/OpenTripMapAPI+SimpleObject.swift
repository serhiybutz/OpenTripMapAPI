//
//  OpenTripMapAPI+SimpleObject.swift
//  OpenTripMapAPI
//
//  Created by Serhiy Butz on 5/26/21
//  Copyright © Serhiy Butz 2021
//  MIT license, see LICENSE file for details
//

import Foundation

extension OpenTripMapAPI {

    public struct SimpleObject: Decodable, Equatable {

        /// Unique identifier of the object in OpenTripMap
        public let xid: String

        /// The name of the object
        public let name: String

        /// Comma-separated list of categories. see List of categories [https://opentripmap.io/catalog]
        public let kinds: Kinds

        /// OpenStreetMap identifier of the object
        public let osm: String?

        /// Wikidata identifier of the object
        public let wikidata: String?

        /// Distance in meters from selected point (for radius query)
        public let dist: Double?

        /// Point location of the object
        public let point: Point

        public init(
            xid: String,
            name: String,
            kinds: Kinds,
            osm: String? = nil,
            wikidata: String? = nil,
            dist: Double? = nil,
            point: Point
        ) {

            self.xid = xid
            self.name = name
            self.kinds = kinds
            self.osm = osm
            self.wikidata = wikidata
            self.dist = dist
            self.point = point
        }
    }
}

extension OpenTripMapAPI.SimpleObject: Identifiable, Hashable {

    public var id: String { xid }

    public func hash(into hasher: inout Hasher) {

        hasher.combine(xid)
    }
}
