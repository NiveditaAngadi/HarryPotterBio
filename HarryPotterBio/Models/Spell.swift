//
//  Spell.swift
//  HarryPotterBio
//
//  Created by Nivedita Angadi on 01/07/24.
//
/*
 {
   "spell": "Accio",
   "use": "Summoning charm",
   "index": 0
 }
 */
import Foundation

struct Spell: Codable {
    var spell: String
    var use: String
    var index: Int
}
