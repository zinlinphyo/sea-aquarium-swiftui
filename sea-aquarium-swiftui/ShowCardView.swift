//
//  ShowCardView.swift
//  sea-aquarium-swiftui
//
//  Created by Zin Lin Phyo on 13/11/24.
//

import SwiftUI

struct ShowCardView: View {
    let showTime: String
    let showTitle: String

    var body: some View {
        NavigationLink(destination: DetailView()) {
            VStack(alignment: .leading, spacing: 5) {
                Text(showTime)
                    .font(.caption)
                    .bold()
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color.blue.opacity(0.7))
                    .cornerRadius(5)
                
                Text(showTitle)
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.black)
            }
            .padding()
            .frame(width: 160, height: 100)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
        }
    }
}
