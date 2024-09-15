//
//  Fish.swift
//  FishTracker
//
//  Created by PJ Gray on 9/15/24.
//


// Fish.swift
import Foundation

enum FishSize: String, Codable, CaseIterable {
    case small, medium, large, colossal
}

enum Rarity: String, Codable, CaseIterable {
    case C, B, A, S
}

struct Fish: Identifiable, Codable {
    var id = UUID()
    let name: String
    let size: FishSize
    let biomes: [Biome]
    let rarity: Rarity
    let trait: Trait
}
