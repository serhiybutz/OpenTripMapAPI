//
//  OpenTripMapAPI+Address.swift
//  OpenTripMapAPI
//
//  Created by Serge Bouts on 5/26/21
//  Copyright © Serge Bouts 2021
//  MIT license, see LICENSE file for details
//

import Foundation

extension OpenTripMapAPI {

    /// Address of object (undocumented, so other fields may exist)
    public struct Address {

        public let city: String?
        public let road: String? // Road/Street
        public let house: String?
        public let houseNumber: String?
        public let town: String?
        public let state: String?
        public let county: String?
        public let village: String?
        public let hamlet: String?
        public let suburb: String?
        public let country: String
        public let countryCode: String?
        public let postcode: String?
        public let pedestrian: String?
        public let stateDistrict: String?
        public let neighbourhood: String?

        public init(
            city: String? = nil,
            road: String? = nil,
            house: String? = nil,
            houseNumber: String? = nil,
            town: String? = nil,
            state: String? = nil,
            county: String? = nil,
            village: String? = nil,
            hamlet: String? = nil,
            suburb: String? = nil,
            country: String,
            countryCode: String? = nil,
            postcode: String? = nil,
            pedestrian: String? = nil,
            stateDistrict: String? = nil,
            neighbourhood: String? = nil
        ) {

            self.city = city
            self.road = road
            self.house = house
            self.houseNumber = houseNumber
            self.town = town
            self.state = state
            self.county = county
            self.village = village
            self.hamlet = hamlet
            self.suburb = suburb
            self.country = country
            self.countryCode = countryCode
            self.postcode = postcode
            self.pedestrian = pedestrian
            self.stateDistrict = stateDistrict
            self.neighbourhood = neighbourhood
        }
    }
}

extension OpenTripMapAPI.Address: Equatable {}

extension OpenTripMapAPI.Address: Decodable {

    enum CodingKeys: String, CodingKey {
        
        case city
        case road
        case house
        case town
        case state
        case county
        case village
        case hamlet
        case suburb
        case country
        case postcode
        case pedestrian
        case countryCode = "country_code"
        case houseNumber = "house_number"
        case stateDistrict = "state_district"
        case neighbourhood
    }
}
