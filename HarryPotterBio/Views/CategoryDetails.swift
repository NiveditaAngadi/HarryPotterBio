//
//  BooksDetail.swift
//  HarryPotterBio
//
//  Created by Nivedita Angadi on 02/07/24.
//

import SwiftUI

struct CategoryDetails: View {
    @EnvironmentObject var dataFetcher: DataFetcher
    var category: Category
    
    var body: some View {
        switch category {
        case .books:
            ZStack {
                List(dataFetcher.booksDataModel, id: \.index) { item in
                    BookInfoRow(book: item)
                }
                if dataFetcher.booksDataModel.isEmpty {
                    ProgressView()
                } else {
                    ProgressView().hidden()
                }
            }
            .navigationTitle(category.localizedName)
            .task {
                try? await dataFetcher.fetchDataForCategory(category)
            }
        case .characters:
            ZStack {
                List {
                    ForEach(dataFetcher.charactersDataModel, id: \.index) { item in
                       CharacterInfoRow(character: item)
                    }
                }.listStyle(.plain)
                
                if dataFetcher.charactersDataModel.isEmpty {
                    ProgressView()
                } else {
                    ProgressView().hidden()
                }
            }
            .navigationTitle(category.localizedName)
            .task {
                try? await dataFetcher.fetchDataForCategory(category)
            }
        case .houses:
            ZStack {
                List(dataFetcher.housesDataModel, id: \.index) { item in
                 HouseInfoRow(house: item)
                }
                if dataFetcher.housesDataModel.isEmpty {
                    ProgressView()
                } else {
                    ProgressView().hidden()
                }
            }
            .navigationTitle(category.localizedName)
            .task {
                try? await dataFetcher.fetchDataForCategory(category)
            }
        case .spells:
            ZStack {
                List(dataFetcher.spellsDataModel, id: \.index) { item in
                    SpellInfoRow(spell: item)
                }
                if dataFetcher.spellsDataModel.isEmpty {
                    ProgressView()
                } else {
                    ProgressView().hidden()
                }
            }
            .navigationTitle(category.localizedName)
            .task {
                try? await dataFetcher.fetchDataForCategory(category)
            }
        }
    }
}

#Preview {
    Group {
        CategoryDetails(category: .books)
            .environmentObject(DataFetcher())
        CategoryDetails(category: .characters)
            .environmentObject(DataFetcher())
        CategoryDetails(category: .spells)
            .environmentObject(DataFetcher())
        CategoryDetails(category: .houses)
            .environmentObject(DataFetcher())
    }
}
