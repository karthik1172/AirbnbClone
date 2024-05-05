//
//  WishlistView.swift
//  AirbnbClone
//
//  Created by Karthik Rashinkar on 22/04/24.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Login to view your wishlist")
                        .font(.headline)
                    Text("You can creat, view or edit wishlist once you've logged in")
                        .font(.footnote)
                }
                .padding()
                
                
                Button {
                    print("login")
                } label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                Spacer()
            }
            .navigationTitle("WishLists")
            .padding()
        }
    }
}

#Preview {
    WishlistView()
}
