//
//  AirbnbListingsViewViewModel.swift
//  AirbnbClone
//
//  Created by Leonard McCook-Carr on 10/28/23.
//

import Foundation

final class AirbnbListingsViewViewModel: ObservableObject {
    private let service = APIService()
    
    @Published var listings: [AirbnbListing] = []
    
    public func fetchLitings() {
        service.getListings { [weak self] result in
            switch result {
            case .success(let models):
                self?.listings = models
            case .failure:
                break
                
            }
        }
    }
}
