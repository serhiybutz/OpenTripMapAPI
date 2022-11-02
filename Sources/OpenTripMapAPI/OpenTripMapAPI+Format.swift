//
//  OpenTripMapAPI+Format.swift
//  OpenTripMapAPI
//
//  Created by Serhiy Butz on 5/26/21
//  Copyright © Serhiy Butz 2021
//  MIT license, see LICENSE file for details
//

import Foundation

extension OpenTripMapAPI {

    /// The output format (GeoJSON is set by default).
    public enum Format: String {
        
        case json, geojson, count
    }
}
