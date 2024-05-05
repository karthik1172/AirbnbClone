//
//  ProfileOptionRowView.swift
//  AirbnbClone
//
//  Created by Karthik Rashinkar on 22/04/24.
//

import SwiftUI

struct ProfileOptionRowView: View {
    let imageName: String
    let title: String
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                    .font(.subheadline)
                Text(title)
                
                Spacer()
                Image(systemName: "chevron.right")
            }
            Divider()
        }
    }
}

#Preview {
    ProfileOptionRowView(imageName: "gear", title: "Settings")
}
