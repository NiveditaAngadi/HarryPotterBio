//
//  LandingPage.swift
//  HarryPotterBio
//
//  Created by Nivedita Angadi on 26/06/24.
//

import SwiftUI
struct CategoryList: View {
    var body: some View {
        NavigationSplitView {
            List(Category.allCases) { category in
                NavigationLink {
                    CategoryDetails(category: category)
                } label: {
                    CategoryRow(content: category)
                }
            }
            .navigationTitle("Category")
        } detail: {
            Text("Select a category")
        }
    }
}

#Preview {
    CategoryList()
        .environmentObject(DataFetcher())
}
