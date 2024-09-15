//
//  Biome.swift
//  FishTracker
//
//  Created by PJ Gray on 9/15/24.
//


// Biome.swift
import Foundation

enum Biome: String, Codable {
    case hot, cold, arid, toxic, irradiated, lush, haunted
    case galaxyWide
}

extension Biome: CaseIterable {
    static var allCases: [Biome] {
        return [.hot, .cold, .arid, .toxic, .irradiated, .lush, .haunted]
    }
}