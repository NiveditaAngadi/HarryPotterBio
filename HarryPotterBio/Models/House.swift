//
//  House.swift
//  HarryPotterBio
//
//  Created by Nivedita Angadi on 01/07/24.
//
/*
 {
    "house": "Gryffindor",
    "emoji": "🦁",
    "founder": "Godric Gryffindor",
    "colors": [
      "red",
      "gold"
    ],
    "animal": "Lion",
    "index": 0
  }
 */

import Foundation

struct House: Codable {
    var house: String
    var emoji: String
    var founder: String
    var colors: [String]
    var animal: String
    var index: Int
}
