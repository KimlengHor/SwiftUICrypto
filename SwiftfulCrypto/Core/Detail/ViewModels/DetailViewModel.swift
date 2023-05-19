//
//  DetailViewModel.swift
//  SwiftfulCrypto
//
//  Created by Kimleng Hor on 5/19/23.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        coinDetailService.$coinDetail
            .sink { returnedCoinDetails in
                print(returnedCoinDetails)
            }
            .store(in: &cancellables)
    }
}
