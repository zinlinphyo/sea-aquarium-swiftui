//
//  TicketView.swift
//  sea-aquarium-swiftui
//
//  Created by Zin Lin Phyo on 13/11/24.
//

import SwiftUI

struct TicketView: View {
    let title: String
    let description: String
    let buttonText: String
    let buttonAction: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.subheadline)
                .bold()
            Text(description)
                .font(.caption)
            Spacer()
            Button(action: buttonAction) {
                Text(buttonText)
                    .font(.caption)
                    .foregroundColor(.blue)
            }
        }
        .padding()
        .frame(width: 160, height: 100)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}
