//
//  Book.swift
//  HarryPotterBio
//
//  Created by Nivedita Angadi on 26/06/24.
//
/*
 "number": 6,
 "title": "Harry Potter and the Half-Blood Prince",
 "originalTitle": "Harry Potter and the Half-Blood Prince",
 "releaseDate": "Jul 16, 2005",
 "description": "Harry discovers a powerful book and, while trying to discover its origins, collaborates with Dumbledore in the search for a series of magical objects that will aid in the destruction of Lord Voldemort.",
 "pages": 607,
 "cover": "https://raw.githubusercontent.com/fedeperin/potterapi/main/public/images/covers/6.png",
 "index": 5
 */

struct Book: Codable {
    var number: Int
    var title: String
    var originalTitle: String
    var releaseDate: String
    var description: String
    var pages: Int
    var cover: String
    var index: Int
}
