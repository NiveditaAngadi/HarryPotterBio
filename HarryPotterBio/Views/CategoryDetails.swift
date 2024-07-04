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
                    VStack(alignment: .leading) {
                        Text(item.title)
                            .font(.subheadline)
                        Text(item.releaseDate)
                            .font(.caption)
                    }
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
                        VStack(alignment: .leading) {
                            Text(item.fullName)
                                .font(.subheadline)
                            Text(item.hogwartsHouse)
                                .font(.subheadline)
                        }
                    }
                }
                
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
                    VStack(alignment: .leading) {
                        Text(item.house)
                            .font(.subheadline)
                        Text(item.emoji)
                            .font(.caption)
                    }
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
                    VStack(alignment: .leading) {
                        Text(item.spell)
                            .font(.subheadline)
                        Text(item.use)
                            .font(.caption)
                    }
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
