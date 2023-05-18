//
//  PreviewProvider.swift
//  SwiftfulCrypto
//
//  Created by Kimleng Hor on 5/16/23.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}

class DeveloperPreview {
    
    static let instance = DeveloperPreview()
    private init() {}
    
    let homeVM = HomeViewModel()
    
    let stat1 = StatisticModel(title: "Market Cap", value: "$12.5Bn", percentageChange: 25.34)
    let stat2 = StatisticModel(title: "Total Volumn", value: "$1.23Tr")
    let stat3 = StatisticModel(title: "Portfolio Value", value: "$50.4k", percentageChange: -12.34)
    
    let coin = CoinModel(id: "bitcoin",
                         symbol: "btc",
                         name: "Bitcoin",
                         image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
                         currentPrice: 27043,
                         marketCap: 523751734624,
                         marketCapRank: 1,
                         fullyDilutedValuation: 567676193725,
                         totalVolume: 5988524528,
                         high24H: 27642,
                         low24H: 26955,
                         priceChange24H: -405.719349311923,
                         priceChangePercentage24H: -1.47812,
                         marketCapChange24H: -7596814497.607422,
                         marketCapChangePercentage24H: -1.42972,
                         circulatingSupply: 19375106,
                         totalSupply: 21000000,
                         maxSupply: 21000000,
                         ath: 69045,
                         athChangePercentage: -60.84629,
                         athDate: "2021-11-10T14:24:11.849Z",
                         atl: 67.81,
                         atlChangePercentage: 39767.26162,
                         atlDate: "2013-07-06T00:00:00.000Z",
                         lastUpdated: "2023-05-16T15:29:05.547Z",
                         sparklineIn7D: SparklineIn7D(
                            price: [
                                27709.564810472708,
                                27756.293586200012,
                            ]
                         )
                         ,
                         priceChangePercentage24HInCurrency: -1.4781153037128159,
                         currentHoldings: 1.5
                       )
}
