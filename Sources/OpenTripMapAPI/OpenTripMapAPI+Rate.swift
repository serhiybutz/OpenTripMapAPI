//
//  OpenTripMapAPI+Rate.swift
//  OpenTripMapAPI
//
//  Created by Serge Bouts on 5/26/21
//  Copyright © Serge Bouts 2021
//  MIT license, see LICENSE file for details
//

import Foundation

extension OpenTripMapAPI {
    
    /// Minimum rating of the object popularity, 1 - minimum, 3 - maximum, h - object is referred to the cultural heritage.
    public struct Rate {

        public enum Score: Int {

            case rate0 = 0
            case rate1 = 1
            case rate2 = 2
            case rate3 = 3
        }

        public let score: Score
        public let isCulturalHeritage: Bool

        public init(score: Score, isCulturalHeritage: Bool = false) {

            self.score = score
            self.isCulturalHeritage = isCulturalHeritage
        }
    }
}

extension OpenTripMapAPI.Rate: Equatable {}

extension OpenTripMapAPI.Rate: Decodable {

    public init(from decoder: Decoder) throws {

        let container = try decoder.singleValueContainer()
        let val = try container.decode(String.self)

        switch val {
        case "0":
            self.score = .rate0
            self.isCulturalHeritage = false
        case "1":
            self.score = .rate1
            self.isCulturalHeritage = false
        case "2":
            self.score = .rate2
            self.isCulturalHeritage = false
        case "3":
            self.score = .rate3
            self.isCulturalHeritage = false
        case "1h":
            self.score = .rate1
            self.isCulturalHeritage = true
        case "2h":
            self.score = .rate2
            self.isCulturalHeritage = true
        case "3h":
            self.score = .rate3
            self.isCulturalHeritage = true
        default:
            throw DecodingError.dataCorruptedError(
                in: container,
                debugDescription: "Invalid value \"\(val)\""
            )
        }
    }
}

extension OpenTripMapAPI.Rate: CustomStringConvertible {

    public var description: String {

        "\(score.rawValue)\(isCulturalHeritage ? "h" : "")"
    }
}
