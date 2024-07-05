//
//  CharacterInfoRow.swift
//  HarryPotterBio
//
//  Created by Nivedita Angadi on 05/07/24.
//

import SwiftUI

struct CharacterInfoRow: View {
    var character: Character
    
    fileprivate func loadImage() -> some View {
        return AsyncImage(url: URL(string: character.image)) { image in
            image.resizable()
                .scaledToFit()
                .cornerRadius(10.0)
        } placeholder: {
            ProgressView()
        }
        .frame(width: 150, height: 150)
    }
    
    var body: some View {
        HStack(spacing: 0) {
            loadImage()
            VStack(alignment: .leading) {
                Text(character.fullName)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(character.nickname)
                    .font(.headline)
                    .fontWeight(.regular)
                Text(character.birthdate)
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundStyle(.gray)
            }
        } .padding()
    }
}

#Preview {
    CharacterInfoRow(character: Character(fullName: "Harry James Potter",
                                          nickname: "Harry",
                                          hogwartsHouse: "Gryffindor",
                                          interpretedBy: "Daniel Radcliffe",
                                          image: "https://raw.githubusercontent.com/fedeperin/potterapi/main/public/images/characters/harry_potter.png",
                                          birthdate: "Jul 31, 1980",
                                          children: [
                                            "James Sirius Potter",
                                            "Albus Severus Potter",
                                            "Lily Luna Potter"
                                          ],
                                          index: 0))
}
