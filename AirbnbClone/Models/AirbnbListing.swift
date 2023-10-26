//
//  AirbnbListing.swift
//  AirbnbClone
//
//  Created by Leonard McCook-Carr on 10/26/23.
//

import Foundation

struct AirbnbListing: Codable {
    let id: String
    let listing_url: String
    let name: String
    let summary: String
    let description: String
    let house_rules: String
    let thumbnail_url: String
    let medium_url: String
    let x1_picture_url: String
    
    // Host details
    let host_name: String
    let host_since: String
    let host_thumbnail_url: String
    let host_picture_url: String
}