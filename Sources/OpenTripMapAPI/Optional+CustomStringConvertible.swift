//
//  Optional+CustomStringConvertible.swift
//  OpenTripMapAPI
//
//  Created by Serge Bouts on 5/26/21
//  Copyright © Serge Bouts 2021
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
