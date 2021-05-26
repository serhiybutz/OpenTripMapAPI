//
//  OpenTripMapAPI+Preview.swift
//  OpenTripMapAPI
//
//  Created by Serge Bouts on 5/26/21
//  Copyright © Serge Bouts 2021
//  MIT license, see LICENSE file for details
//

import Foundation

extension OpenTripMapAPI {

    /// Image thumbnail
    public struct Preview: Equatable, Decodable {

        /// Image thumbnail URL
        public let source: String

        /// Thumbnail width in pixels
        public let width: Int

        /// Thumbnail height in pixels
        public let height: Int

        public init(source: String, width: Int, height: Int) {

            self.source = source
            self.width = width
            self.height = height
        }
    }
}
