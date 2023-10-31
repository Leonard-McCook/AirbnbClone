//
//  AirbnbListingsView.swift
//  AirbnbClone
//
//  Created by Leonard McCook-Carr on 10/25/23.
//

import SwiftUI

struct AirbnbListingsView: View {
    @StateObject var viewModel = AirbnbListingsViewViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.listings) { listing in
                NavigationLink(destination: Text("Hello"), label: {
                    AirbnbListingCardView(model: listing)
                })
            }
        }
        .onAppear {
            viewModel.fetchLitings()
    
        }
    }
}
