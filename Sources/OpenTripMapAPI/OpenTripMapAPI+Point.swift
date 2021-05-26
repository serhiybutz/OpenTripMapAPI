//
//  OpenTripMapAPI+Point.swift
//  OpenTripMapAPI
//
//  Created by Serge Bouts on 5/26/21
//  Copyright © Serge Bouts 2021
//  MIT license, see LICENSE file for details
//

import Foundation

extension OpenTripMapAPI {
    
    /// Point location (geographic coordinates) of the object
    public struct Point: Decodable, Equatable {
        
        /// Longitude
        public let lon: Double
        
        /// Latitude
        public let lat: Double

        public init(lon: Double, lat: Double) {
            
            self.lon = lon
            self.lat = lat
        }
    }
}
