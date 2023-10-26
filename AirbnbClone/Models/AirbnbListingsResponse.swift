//
//  AirbnbListingsResponse.swift
//  AirbnbClone
//
//  Created by Leonard McCook-Carr on 10/26/23.
//

import Foundation

struct AirbnbListingsResponse: Codable {
    let total_count: Int
    let  results: [AirbnbListing]
}
