//
//  AirbnbListingCardView.swift
//  AirbnbClone
//
//  Created by Leonard McCook-Carr on 10/25/23.
//

import SwiftUI

struct AirbnbListingCardView: View {
    let model: AirbnbListing
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: model.thumbnail_url ?? ""))
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipped()
            
            VStack {
                Text(model.name ?? "Listing")
                    .lineLimit(1)
                    .font(.title3)
                    .bold()
                
                Text(model.name ?? "Listing")
                    .foregroundColor(Color(.secondaryLabel))
                    .lineLimit(3)
                    .font(.body)
            }
        }
    }
}


