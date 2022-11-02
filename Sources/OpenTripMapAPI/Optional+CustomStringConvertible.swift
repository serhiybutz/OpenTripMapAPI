//
//  Optional+CustomStringConvertible.swift
//  OpenTripMapAPI
//
//  Created by Serhiy Butz on 5/26/21
//  Copyright © Serhiy Butz 2021
//  MIT license, see LICENSE file for details
//

import Foundation

extension Optional: CustomStringConvertible where Wrapped: CustomStringConvertible {

    public var description: String {

        switch self {
        case .some(let v):
            return "\(v)"
        case .none:
            return "␀" // "∅"
        }
    }
}
