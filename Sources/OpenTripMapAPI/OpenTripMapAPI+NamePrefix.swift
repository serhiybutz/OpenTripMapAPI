//
//  OpenTripMapAPI+NamePrefix.swift
//  OpenTripMapAPI
//
//  Created by Serhiy Butz on 5/26/21
//  Copyright © Serhiy Butz 2021
//  MIT license, see LICENSE file for details
//

import Foundation

extension OpenTripMapAPI {

    /// The text string on which to search at the begining of the object name (mimimum 3 characters).
    public struct NamePrefix {

        public let namePrefix: String

        public init?(_ namePrefix: String) {

            let prefix = namePrefix.trimmingCharacters(in: .whitespacesAndNewlines)
            guard prefix.count >= 3 else { return nil }
            self.namePrefix = prefix
        }
    }
}

extension OpenTripMapAPI.NamePrefix: CustomStringConvertible {
    
    public var description: String { namePrefix }
}
