//
//  DataFetcher.swift
//  HarryPotterBio
//
//  Created by Nivedita Angadi on 26/06/24.
//

import SwiftUI

class DataFetcher: ObservableObject {
    @Published var booksDataModel = [Book]()
    @Published var charactersDataModel = [Character]()
    @Published var housesDataModel = [House]()
    @Published var spellsDataModel = [Spell]()
    
    
    static let baseUrl = URL(string: "https://potterapi-fedeperin.vercel.app/en/")!
    
    enum FetchError: Error {
        case badRequest
        case badJSON
    }
    
    func fetchDataForCategory(_ category: Category) async
    throws {
        let url = DataFetcher.baseUrl.appendingPathComponent(category.rawValue)
        print(url)
        
        let (data, response) = try await URLSession.shared.data(for: URLRequest(url: url))
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { throw FetchError.badRequest }
        
        Task { @MainActor in
            switch category {
            case .books:
                booksDataModel = try JSONDecoder().decode([Book].self, from: data)
            case .characters:
                charactersDataModel = try JSONDecoder().decode([Character].self, from: data)
            case .houses:
                housesDataModel = try JSONDecoder().decode([House].self, from: data)
            case .spells:
                spellsDataModel = try JSONDecoder().decode([Spell].self, from: data)
            }
        }
    }
}
