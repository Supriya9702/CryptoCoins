//
//  HTTPRequest.swift
//  CryptoMarket
//
//  Created by Supriya Gunda on 20/03/24.
//

import Foundation

enum HTTP {

    enum Method: String {
        case get = "GET"
        case post = "POST"
    }

    enum Headers {

        enum Key: String {
            case contentType = "Content-Type"
            case apiKey = "X-CMC_PRO_API_KEY"
        }

        enum Value: String {
            case applicationJson = "application/json"
        }
    }
}
