//
//  Category.swift
//  HarryPotterBio
//
//  Created by Nivedita Angadi on 26/06/24.
//

import SwiftUI

enum Category: String, Identifiable, Hashable, CaseIterable {
    var id: RawValue { rawValue }
    
    case books
    case characters
    case houses
    case spells
    
    var localizedName: LocalizedStringKey {
        switch self {
        case .books:
            "Books"
        case .characters:
            "Characters"
        case .houses:
            "Houses"
        case .spells:
            "Spells"
        }
    }
    
    var image: Image {
        switch self {
        case .books:
            Image(systemName: "books.vertical")
        case .characters:
            Image(systemName: "person.fill.viewfinder")
        case .houses:
            Image(systemName: "house.lodge")
        case .spells:
            Image(systemName: "flag.2.crossed")
        }
    }
}
