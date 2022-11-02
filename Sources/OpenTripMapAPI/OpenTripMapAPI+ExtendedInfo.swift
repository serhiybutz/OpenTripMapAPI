//
//  OpenTripMapAPI+ExtendedInfo.swift
//  OpenTripMapAPI
//
//  Created by Serhiy Butz on 5/26/21
//  Copyright © Serhiy Butz 2021
//  MIT license, see LICENSE file for details
//

import Foundation

extension OpenTripMapAPI {

    /// Extended object information (for some object categories)
    public struct ExtendedInfo {

        /// Source ID
        public let src: String

        /// Object identifier in the source
        public let srcID: Int

        // Object description
        public let descr: String

        public init(src: String, srcID: Int, descr: String) {

            self.src = src
            self.srcID = srcID
            self.descr = descr
        }
    }
}

extension OpenTripMapAPI.ExtendedInfo: Equatable {}

extension OpenTripMapAPI.ExtendedInfo: Decodable {

    enum CodingKeys: String, CodingKey {
        
        case src
        case srcID = "src_id"
        case descr
    }
}

