//
//  HomeViewModel.swift
//  CryptoTracker
//
//  Created by Daryna Polevyk on 12.11.2021.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []

    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        dataService.$allCoins// when coinSubscription updated, then dataService.$allCoins notified too and get the same values
            .sink { [weak self] (returnedCoins) in //
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
}
