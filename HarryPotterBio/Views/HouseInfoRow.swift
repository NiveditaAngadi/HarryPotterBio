//
//  HouseInfoRow.swift
//  HarryPotterBio
//
//  Created by Nivedita Angadi on 05/07/24.
//

import SwiftUI

struct HouseInfoRow: View {
    var house: House
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Text(house.house)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(house.emoji)
                    .font(.title)
                    .fontWeight(.bold)
            }
            
            Text(house.founder)
                .font(.title3)
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
            Text(house.animal)
                .font(.title3)
                .fontWeight(.medium)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    /*
     {
        "house": "Gryffindor",
        "emoji": "🦁",
        "founder": "Godric Gryffindor",
        "colors": [
          "red",
          "gold"
        ],
        "animal": "Lion",
        "index": 0
      }
     */
    HouseInfoRow(house: House(house: "Gryffindor", 
                              emoji: "🦁",
                              founder: "Godric Gryffindor",
                              colors: ["red","gold"],
                              animal: "Lion",
                              index: 0))
}
