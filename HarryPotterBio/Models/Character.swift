//
//  Character.swift
//  HarryPotterBio
//
//  Created by Nivedita Angadi on 01/07/24.
//
/*
 {
     "fullName": "Harry James Potter",
     "nickname": "Harry",
     "hogwartsHouse": "Gryffindor",
     "interpretedBy": "Daniel Radcliffe",
     "children": [
       "James Sirius Potter",
       "Albus Severus Potter",
       "Lily Luna Potter"
     ],
     "image": "https://raw.githubusercontent.com/fedeperin/potterapi/main/public/images/characters/harry_potter.png",
     "birthdate": "Jul 31, 1980",
     "index": 0
   }
 */

struct Character: Codable {
    var fullName: String
    var nickname: String
    var hogwartsHouse: String
    var interpretedBy: String
    var image: String
    var birthdate: String
    var children: [String]?
    var index: Int
}
