//
//  ContentView.swift
//  sea-aquarium-swiftui
//
//  Created by Zin Lin Phyo on 13/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image("ic_home")
                    Text("Home")
                }
            
            Text("Wallet")
                .tabItem {
                    Image(systemName: "wallet.pass.fill")
                    Text("Wallet")
                }
            
            Text("More")
                .tabItem {
                    Image("ic_more")
                    Text("More")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
