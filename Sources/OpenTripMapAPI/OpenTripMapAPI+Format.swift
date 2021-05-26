//
//  OpenTripMapAPI+Format.swift
//  OpenTripMapAPI
//
//  Created by Serge Bouts on 5/26/21
//  Copyright © Serge Bouts 2021
//  MIT license, see LICENSE file for details
//

import Foundation

extension OpenTripMapAPI {

    /// The output format (GeoJSON is set by default).
    public enum Format: String {
        
        case json, geojson, count
    }
}
