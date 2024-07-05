//
//  LandingPageRow.swift
//  HarryPotterBio
//
//  Created by Nivedita Angadi on 26/06/24.
//

import SwiftUI

struct CategoryRow: View {
    var content: Category
    
    var body: some View {
        HStack {
            content.image
            Text(content.localizedName)
            Spacer()
        }
    }
    
}

#Preview {
    Group {
        CategoryRow(content: Category.books)
        CategoryRow(content: Category.characters)
    }
}
