//
//  OpenTripMapAPI+BoundingBox.swift
//  OpenTripMapAPI
//
//  Created by Serge Bouts on 5/26/21
//  Copyright © Serge Bouts 2021
//  MIT license, see LICENSE file for details
//

import Foundation

extension OpenTripMapAPI {

    /// Bounding box.
    public struct BoundingBox {

        /// Minimum longitude
        public let lonMin: Double

        /// Maximum longitude
        public let lonMax: Double

        /// Minimum latitude
        public let latMin: Double

        /// Maximum latitude
        public let latMax: Double

        public init(lonMin: Double, lonMax: Double, latMin: Double, latMax: Double) {

            self.lonMin = lonMin
            self.lonMax = lonMax
            self.latMin = latMin
            self.latMax = latMax
        }
    }
}

extension OpenTripMapAPI.BoundingBox: Equatable {}

extension OpenTripMapAPI.BoundingBox: Decodable {
    
    enum CodingKeys: String, CodingKey {

        case lonMin = "lon_min"
        case lonMax = "lon_max"
        case latMin = "lat_min"
        case latMax = "lat_max"
    }
}

extension OpenTripMapAPI.BoundingBox: CustomStringConvertible {

    public var description: String {

        "BoundingBox(lonMin: \(lonMin), lonMax: \(lonMax), latMin: \(latMin), latMax: \(latMax))"
    }
}
