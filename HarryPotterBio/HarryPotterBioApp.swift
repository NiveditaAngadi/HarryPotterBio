//
//  HarryPotterBioApp.swift
//  HarryPotterBio
//
//  Created by Nivedita Angadi on 21/06/24.
//

import SwiftUI

@main
struct HarryPotterBioApp: App {
    @StateObject private var dataFetcher = DataFetcher()
    
    var body: some Scene {
        WindowGroup {
                CategoryList()
                    .environmentObject(dataFetcher)
        }
    }
}
