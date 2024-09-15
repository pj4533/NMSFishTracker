//
//  Bait.swift
//  FishTracker
//
//  Created by PJ Gray on 9/15/24.
//


// Bait.swift
import Foundation

struct Bait: Identifiable, Codable, Hashable {
    var id = UUID()
    let name: String
    let rarityIncreasePercent: Double
    let sizeIncreasePercent: Double
    let trait: Trait
}
