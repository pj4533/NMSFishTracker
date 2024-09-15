//
//  Catch.swift
//  FishTracker
//
//  Created by PJ Gray on 9/15/24.
//


// Catch.swift
import Foundation

struct Catch: Identifiable, Codable {
    var id = UUID()
    let fish: Fish
    let dateCaught: Date
    let baitUsed: Bait?
}
