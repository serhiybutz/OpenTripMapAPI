//
//  Publisher+backoff retry.swift
//  OpenTripMapAPI
//
//  Created by Serhiy Butz on 3/13/22
//  Copyright © Serhiy Butz 2022
//  MIT license, see LICENSE file for details
//

import Combine
import Dispatch

extension Publisher {

    /// Retry operator with exponential back-off.
    func retry<O, F>(_ retries: Int, withBackoff initialBackoff: Int, predicate: ((F) -> Bool)? = nil) -> AnyPublisher<O, F> where O == Self.Output, F == Self.Failure {

        self.tryCatch { error -> AnyPublisher<O, F> in

            if predicate?(error) ?? true {
                var backOff = initialBackoff
                return Just(Void())
                    .flatMap { _ -> AnyPublisher<O, F> in
                        let result = Just(Void())
                            .delay(for: .init(integerLiteral: backOff), scheduler: DispatchQueue.global())
                            .flatMap { _ in
                                return self
                            }
                        backOff = backOff * 2
                        return result.eraseToAnyPublisher()
                    }
                    .retry(retries - 1)
                    .eraseToAnyPublisher()
            } else {
                throw error
            }
        }
        .mapError { $0 as! F }
        .eraseToAnyPublisher()
    }
}
