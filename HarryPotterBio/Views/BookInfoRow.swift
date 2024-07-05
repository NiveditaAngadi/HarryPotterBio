//
//  BookInfoRow.swift
//  HarryPotterBio
//
//  Created by Nivedita Angadi on 05/07/24.
//

import SwiftUI

struct BookInfoRow: View {
    var book: Book
    
    fileprivate func loadImage() -> some View {
        return AsyncImage(url: URL(string: book.cover)) { image in
            image.resizable()
                .scaledToFit()
                .cornerRadius(10.0)
        } placeholder: {
            ProgressView()
        }
        .frame(width: 150, height: 150, alignment: .leading)
    }
    
    var body: some View {
        HStack(spacing: 0) {
            loadImage()
            VStack(alignment: .leading) {
                Text(book.originalTitle)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(book.releaseDate)
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    BookInfoRow(book: Book(number: 6, 
                           title: "Harry Potter and the Half-Blood Prince",
                           originalTitle: "Harry Potter and the Half-Blood Prince",
                           releaseDate: "Jul 16, 2005",
                           description: "Harry discovers a powerful book and, while trying to discover its origins, collaborates with Dumbledore in the search for a series of magical objects that will aid in the destruction of Lord Voldemort.",
                           pages: 607,
                           cover: "https://raw.githubusercontent.com/fedeperin/potterapi/main/public/images/covers/6.png",
                           index: 5))
}
