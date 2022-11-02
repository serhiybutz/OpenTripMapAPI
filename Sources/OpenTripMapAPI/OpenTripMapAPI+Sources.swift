//
//  OpenTripMapAPI+Sources.swift
//  OpenTripMapAPI
//
//  Created by Serhiy Butz on 5/26/21
//  Copyright © Serhiy Butz 2021
//  MIT license, see LICENSE file for details
//

import Foundation

extension OpenTripMapAPI {

    /// Sources of information on object
    public struct Sources: Equatable, Decodable {

        /// Source of object geometry
        public let geometry: SrcGeom

        /// Sources of object attributes
        public let attributes: [SrcAttr]

        public init(geometry: SrcGeom, attributes: [SrcAttr]) {

            self.geometry = geometry
            self.attributes = attributes
        }
    }
}
