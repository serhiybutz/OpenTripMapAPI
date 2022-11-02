//
//  OpenTripMapAPI+Place.swift
//  OpenTripMapAPI
//
//  Created by Serhiy Butz on 5/26/21
//  Copyright © Serhiy Butz 2021
//  MIT license, see LICENSE file for details
//

import Foundation

extension OpenTripMapAPI {

    public struct Place: Decodable, Equatable {

        /// Unique identifier of the object in OpenTripMap
        public let xid: String

        /// The name of the object
        public let name: String

        /// Address (undocumented)
        public let address: Address?

        /// Comma-separated list of categories. see List of categories [https://opentripmap.io/catalog]
        public let kinds: Kinds

        /// OpenStreetMap identifier of the object
        public let osm: String?

        /// Wikidata identifier of the object
        public let wikidata: String?

        /// Rating of the object popularity
        public let rate: Rate

        /// Image URL
        public let image: String?

        /// Image thumbnail
        public let preview: Preview?

        /// Link to Wikipedia
        public let wikipedia: String?

        /// Extracts of the wikipedia page
        public let wikipedia_extracts: WikipediaExtracts?

        /// Link to WikiVoyage
        public let voyage: String?

        /// Link to website
        public let url: String?

        /// Link to object at opentripmap.com
        public let otm: String

        /// Sources of information on object
        public let sources: Sources

        /// Extended object information (for some object categories)
        public let info: ExtendedInfo?

        /// Minimum bounding box for the object geometry
        public let bbox: BoundingBox?

        /// Point geographic coordinates of the object
        public let point: Point

        public init(
            xid: String,
            name: String,
            address: Address? = nil,
            kinds: Kinds,
            osm: String? = nil,
            wikidata: String? = nil,
            rate: Rate,
            image: String? = nil,
            preview: Preview? = nil,
            wikipedia: String? = nil,
            wikipedia_extracts: WikipediaExtracts? = nil,
            voyage: String? = nil,
            url: String? = nil,
            otm: String,
            sources: Sources,
            info: ExtendedInfo? = nil,
            bbox: BoundingBox? = nil,
            point: Point
        ) {

            self.xid = xid
            self.name = name
            self.address = address
            self.kinds = kinds
            self.osm = osm
            self.wikidata = wikidata
            self.rate = rate
            self.image = image
            self.preview = preview
            self.wikipedia = wikipedia
            self.wikipedia_extracts = wikipedia_extracts
            self.voyage = voyage
            self.url = url
            self.otm = otm
            self.sources = sources
            self.info = info
            self.bbox = bbox
            self.point = point
        }
    }
}

extension OpenTripMapAPI.Place: Identifiable, Hashable {

    public var id: String { xid }
    
    public func hash(into hasher: inout Hasher) {

        hasher.combine(xid)
    }
}
