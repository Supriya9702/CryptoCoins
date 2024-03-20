//
//  CryptoEntity.swift
//  CryptoMarket
//
//  Created by Supriya Gunda on 20/03/24.
//

import Foundation

struct CoinData: Decodable {
    let data: [Coin]
}

struct Coin: Decodable {
    let id: Int
    let name: String
    let rank: Int
    let pricingData: PricingData
    
    var logoURL: URL? {
        return URL(string: "https://s2.coinmarketcap.com/static/img/coins/200x200/\(id).png")
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case rank = "cmc_rank"
        case pricingData = "quote"
    }
}

struct PricingData: Decodable {
    let CAD: CAD
}

struct CAD: Decodable {
    let price: Double
    let marketCap: Double
    
    enum CodingKeys: String, CodingKey {
        case price = "price"
        case marketCap = "market_cap"
    }
}

