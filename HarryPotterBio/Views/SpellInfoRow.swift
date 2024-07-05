//
//  SpellInfoRow.swift
//  HarryPotterBio
//
//  Created by Nivedita Angadi on 05/07/24.
//

import SwiftUI

struct SpellInfoRow: View {
    var spell: Spell
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(spell.spell)
                .font(.title2)
                .fontWeight(.semibold)
            Text(spell.use)
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    SpellInfoRow(spell: Spell(spell: "Accio",
                              use: "Summoning charm",
                              index: 0))
}
