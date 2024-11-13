//
//  DetailView.swift
//  sea-aquarium-swiftui
//
//  Created by Zin Lin Phyo on 13/11/24.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                Image("alligator_gar")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Alligator Gar")
                        .font(.title)
                        .bold()
                    
                    HStack {
                        Text("410m away")
                        Image(systemName: "map.fill")
                            .foregroundColor(.blue)
                        Text("Map")
                            .foregroundColor(.blue)
                    }
                    .font(.caption)
                }
                .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("With its wide, alligator-like snout and razor-sharp teeth, it's easy to see how this fish acquired its name. Despite its ferocious appearance, the alligator gar poses little threat to human beings. They prefer to lie and wait for unsuspecting prey within reach, before lunging forward to grab their prey.")
                    
                    Text("As the largest species in the gar family, the alligator gar can reach up to 3 meters in length. Scientists have traced this species in fossil records dating back to 100 million years ago, hence they are also known as living fossils!")
                }
                .padding(.horizontal)
                .padding(.bottom)
            }
            .padding(.top)
        }
        .navigationTitle("Zone 1")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
