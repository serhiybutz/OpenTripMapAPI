//
//  OpenTripMapAPI.swift
//  OpenTripMapAPI
//
//  Created by Serge Bouts on 5/26/21
//  Copyright © Serge Bouts 2021
//  MIT license, see LICENSE file for details
//

import Combine
import Foundation
import os.log

open class OpenTripMapAPI {

    // MARK: - Properties

    let APIKey: String

    // MARK: - Initialization

    public init(APIKey: String) {

        self.APIKey = APIKey
    }

    // MARK: - API

    public func objectListDataPublisher(
        boundingBox: BoundingBox,
        kinds: Kinds? = nil,
        rate: Rate? = nil,
        limit: Int? = nil) -> AnyPublisher<[SimpleObject], Error> {

            guard let endpointURL = ObjectListEndpoint(
                apikey: APIKey,
                boundingBox: boundingBox,
                kinds: kinds,
                rate: rate,
                format: .json,
                limit: limit).url
            else {

                return Fail(error: Error.invalidRequest("Invalid object URL for list endpoint {\(boundingBox),\(String(describing: kinds)),\(String(describing: rate))}")).eraseToAnyPublisher()
            }

            return dataTaskPublisher(for: endpointURL)
            // isolate decode errors
                .flatMap { data in

                    Just(data)
                        .decode(type: [SimpleObject].self, decoder: JSONDecoder())
                        .mapError {

                            Error.decoding($0)
                        }
                        .eraseToAnyPublisher()
                }
                .handleEvents(receiveOutput: { objects in

                    os_log(.info, log: OSLog.default, "Fetching objects @\(self.logify(endpointURL)) succeded: \(objects.count) object(s) received")
                }, receiveCompletion: {

                    if case .failure(let error) = $0 {
                        os_log(.error, log: OSLog.default, "Fetching objects @\(self.logify(endpointURL)) failed: \(error.localizedDescription)")
                    }
                })
                .eraseToAnyPublisher()
        }

    public func objectDetailsPublisher(xid: String, lang: ISO639LanguageCode = .en) -> AnyPublisher<Place, Error> {
        
        guard let endpointURL = ObjectDetailsEndpoint(
            apikey: APIKey,
            xid: xid,
            lang: lang).url
        else {

            return Fail(error: Error.invalidRequest("Invalid URL for object details endpoint {\(xid),\(lang)}")).eraseToAnyPublisher()
        }

        return dataTaskPublisher(for: endpointURL)
        // isolate decode errors
            .flatMap { data in

                Just(data)
                    .decode(type: Place.self, decoder: JSONDecoder())
                    .mapError {

                        Error.decoding($0)
                    }
                    .eraseToAnyPublisher()
            }
            .handleEvents(receiveOutput: { objects in

                os_log(.info, log: OSLog.default, "Fetching object @\(self.logify(endpointURL)) succeded")
            }, receiveCompletion: {

                if case .failure(let error) = $0 {
                    os_log(.error, log: OSLog.default, "Fetching object @\(self.logify(endpointURL)) failed: \(error.localizedDescription)")
                }
            })
            .eraseToAnyPublisher()
    }

    // MARK: - Helpers

    private func dataTaskPublisher(for url: URL) -> AnyPublisher<Data, Error> {

        URLSession.shared.dataTaskPublisher(for: url) // Fails with URLError!

        // handle URL errors (most likely not able to connect to the server)
            .mapError { (error: URLError) -> Error in
                return Error.transport(error)
            }

        // handle all other errors
            .tryMap { data, response in

                guard let httpResponse = response as? HTTPURLResponse else {

                    throw Error.invalidResponse(response)
                }

                guard let statusCode = HTTPStatusCode(httpResponse.statusCode) else {

                    throw Error.invalidStatusCode(httpResponse.statusCode)
                }

                guard statusCode.responseClass == .successful else {

                    switch statusCode.responseClass {
                    case .serverError:

                        let retryAfter = httpResponse.value(forHTTPHeaderField: "Retry-After")
                        throw Error.server(statusCode: statusCode, retryAfter: retryAfter)

                    default:

                        throw Error.other(statusCode: statusCode, data: data)
                    }
                }

                return data
            }
            .mapError { $0 as! Error } // tryMap has Failure = Swift.Error, so convert error to our error type
            .retry(2, withBackoff: 3) { error in
                if case Error.server = error {
                    return true
                }
                return false
            }
            .share() // use only one subscription with mutliple subscribers, but share the output between them (since the actual request is async it's safe to use it without resorting to makeConnectable() or multicast())
            .eraseToAnyPublisher()
    }

    private func logify(_ url: URL) -> String {
        "\(url)".replacingOccurrences(of: APIKey, with: "{API_KEY}")
    }
}

