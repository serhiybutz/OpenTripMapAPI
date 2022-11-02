//
//  OpenTripMapAPI+Kinds.swift
//  OpenTripMapAPI
//
//  Created by Serhiy Butz on 5/26/21
//  Copyright © Serhiy Butz 2021
//  MIT license, see LICENSE file for details
//

import Foundation

extension OpenTripMapAPI {

    /// Object category. Several comma-separated categories may be stated with OR logic.
    public struct Kinds {

        public let kinds: Set<ObjectCategory>

        public init(kinds: Set<ObjectCategory>) {

            self.kinds = kinds
        }
    }
}

extension OpenTripMapAPI.Kinds: ExpressibleByArrayLiteral {

    public init(arrayLiteral elements: ObjectCategory...) {

        self.kinds = Set(elements)
    }
}

extension OpenTripMapAPI.Kinds: Equatable {}

extension OpenTripMapAPI.Kinds: Decodable {

    public typealias ObjectCategory = OpenTripMapAPI.ObjectCategory

    public init(from decoder: Decoder) throws {
        
        let container = try decoder.singleValueContainer()
        let val = try container.decode(String.self)
        let tokens = val.split(separator: ",").map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
        let categories = try tokens.map { (token: String) -> ObjectCategory in
            if let category = ObjectCategory(rawValue: token.lowercased()) {
                return category
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Invalid value \"\(token)\""
                )
            }
        }
        self.kinds = Set(categories)
    }
}

extension OpenTripMapAPI.Kinds: CustomStringConvertible {

    public var description: String {

        kinds
            .map { String(describing: $0) }
            .joined(separator: ",")
    }
}

extension OpenTripMapAPI.Kinds: Sequence {

    public func makeIterator() -> AnyIterator<OpenTripMapAPI.ObjectCategory> {

        let kinds = Array(kinds).sorted { lhs, rhs in
            lhs.info.name < rhs.info.name
        }
        var index = 0
        return AnyIterator {
            defer { index += 1 }
            return index < kinds.count ? kinds[index] : nil
        }
    }
}
