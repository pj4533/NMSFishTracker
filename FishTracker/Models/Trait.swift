//
//  Trait.swift
//  FishTracker
//
//  Created by PJ Gray on 9/15/24.
//


// Trait.swift
import Foundation

enum Trait: String, Codable, CaseIterable {
    case none, day, night, storm
}