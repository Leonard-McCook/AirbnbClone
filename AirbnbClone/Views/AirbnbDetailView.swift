//
//  AirbnbDetailView.swift
//  AirbnbClone
//
//  Created by Leonard McCook-Carr on 10/25/23.
//

import SwiftUI

struct AirbnbDetailView: View {
    let model: AirbnbListing
    
    var body: some View {
        VStack(alignment: .leading) {
            GeometryReader { proxy in
                ScrollView(.vertical) {
                    // Picture
                    AsyncImage(url: URL(string: model.xl_picture_url ?? ""))
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                    
                    // Info
                    Text(model.name ?? "")
                        .bold()
                    
                    Text("Description: \(model.description ?? "")")
                    Text("Summary: \(model.summary ?? "")")
                    Text("House Rules: \(model.house_rules ?? "")")
                    Text("Space: \(model.space ?? "")")
                    
                    //Host Info
                    HStack {
                        AsyncImage(url: URL(string: model.host_picture_url))
                            .frame(width: 75, height: 75)
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                        
                        Text(model.host_name)
                            .bold()
                    }
                }
                
            }
        }
    }
}
