//
//  OpenTripMapAPI+SrcAttr.swift
//  OpenTripMapAPI
//
//  Created by Serge Bouts on 5/26/21
//  Copyright © Serge Bouts 2021
//  MIT license, see LICENSE file for details
//

import Foundation

extension OpenTripMapAPI {

    /// The source of the object attributes.
    public enum SrcAttr: String, Equatable, Decodable {

        case osm
        case wikidata
        case snow
        case cultura_ru = "cultura.ru"
        case rosnedra
        case user
    }
}
