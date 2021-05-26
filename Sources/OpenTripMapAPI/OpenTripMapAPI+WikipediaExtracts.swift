//
//  OpenTripMapAPI+WikipediaExtracts.swift
//  OpenTripMapAPI
//
//  Created by Serge Bouts on 5/26/21
//  Copyright © Serge Bouts 2021
//  MIT license, see LICENSE file for details
//

import Foundation

extension OpenTripMapAPI {

    /// Extracts of the wikipedia page
    public struct WikipediaExtracts: Equatable, Decodable {

        /// Page title in wikipedia
        public let title: String

        /// Plain-text extract
        public let text: String
        
        /// Limited HTML extract
        public let html: String

        public init(title: String, text: String, html: String) {

            self.title = title
            self.text = text
            self.html = html
        }
    }
}
