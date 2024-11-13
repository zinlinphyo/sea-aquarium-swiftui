//
//  HomeView.swift
//  sea-aquarium-swiftui
//
//  Created by Zin Lin Phyo on 13/11/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    
                    Image("banner_image")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 200)
                        .cornerRadius(8)
                        .clipped()
                        .overlay(
                            Text("Don't miss our daily Dive Feeding!")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.black.opacity(0.5))
                                .cornerRadius(8),
                            alignment: .bottomLeading
                        )
                        .padding(.horizontal)
                    
                    HStack(spacing: 20) {
                        ForEach(["Map", "Inhabitants", "Shows", "Shopping"], id: \.self) { item in
                            VStack {
                                Image(item.lowercased())
                                    .resizable()
                                    .frame(width: 42, height: 42)
                                    .foregroundColor(.blue)
                                Text(item)
                                    .font(.caption)
                            }
                        }
                    }
                    
                    HStack(spacing: 20) {
                        ForEach(["Dine", "Meet & Greets"], id: \.self) { item in
                            VStack {
                                Image(item.lowercased())
                                    .resizable()
                                    .frame(width: 42, height: 42)
                                    .foregroundColor(.blue)
                                Text(item)
                                    .font(.caption)
                            }
                        }
                    }
                    
                    HStack(spacing: 16) {
                        TicketView(
                            title: "My e-tickets",
                            description: "There aren't any yet",
                            buttonText: "Retrieve here",
                            buttonAction: {
                                print("Retrieve button tapped")
                            }
                        )
                        TicketView(
                            title: "Park hours",
                            description: "Today, 13 Feb\n10am - 5pm",
                            buttonText: "Plan my visit",
                            buttonAction: {
                                print("Retrieve button tapped")
                            }
                        )

                    }
                    .padding(.horizontal)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Text("Upcoming Shows")
                                .font(.headline)
                            Spacer()
                            NavigationLink(destination: Text("View all shows")) {
                                Text("View all")
                                    .font(.caption)
                                    .foregroundColor(.blue)
                            }
                        }
                        .padding(.horizontal)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 10) {
                                ForEach(0..<5) { index in
                                    ShowCardView(showTime: "2:30 PM", showTitle: "Dive Feeding @ Shipwreck")
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                }
            }
            .navigationTitle("S.E.A. Aquarium")
        }
    }
}
