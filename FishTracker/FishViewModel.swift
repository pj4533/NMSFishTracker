//
//  FishViewModel.swift
//  FishTracker
//
//  Created by PJ Gray on 9/15/24.
//


// FishViewModel.swift
import SwiftUI

class FishViewModel: ObservableObject {
    static let testFishData: [Fish] = [
        // galaxywide
        Fish(name: "Tiny Scuttlefish", size: .small, biomes: [.galaxyWide], rarity: .C, trait: .none),
        Fish(name: "Mud Crab", size: .small, biomes: [.galaxyWide], rarity: .C, trait: .none),
        Fish(name: "Pondskipper", size: .small, biomes: [.galaxyWide], rarity: .C, trait: .none),
        Fish(name: "Reef Eel", size: .medium, biomes: [.galaxyWide], rarity: .C, trait: .none),
        Fish(name: "Rockfin", size: .medium, biomes: [.galaxyWide], rarity: .C, trait: .none),
        Fish(name: "Greenscale Bloater", size: .large, biomes: [.galaxyWide], rarity: .C, trait: .none),
        Fish(name: "Stonescale Shark", size: .colossal, biomes: [.galaxyWide], rarity: .C, trait: .none),
        Fish(name: "Needlefish", size: .small, biomes: [.galaxyWide], rarity: .B, trait: .none),
        Fish(name: "Spiny Starfish", size: .small, biomes: [.galaxyWide], rarity: .B, trait: .none),
        Fish(name: "Hypnotic Octopus", size: .medium, biomes: [.galaxyWide], rarity: .B, trait: .none),
        Fish(name: "Longjaw Snapper", size: .medium, biomes: [.galaxyWide], rarity: .B, trait: .none),
        Fish(name: "Whispering Bonefish", size: .large, biomes: [.galaxyWide], rarity: .B, trait: .none),
        Fish(name: "Giant Ray", size: .colossal, biomes: [.galaxyWide], rarity: .B, trait: .none),
        Fish(name: "Shrieking Oyster", size: .small, biomes: [.galaxyWide], rarity: .A, trait: .none),
        Fish(name: "Moon Turtle", size: .medium, biomes: [.galaxyWide], rarity: .A, trait: .night),
        Fish(name: "Colossal Shrimp", size: .large, biomes: [.galaxyWide], rarity: .A, trait: .none),
        Fish(name: "Thunderfin", size: .colossal, biomes: [.galaxyWide], rarity: .A, trait: .storm),
        Fish(name: "Singing Sea-Snail", size: .small, biomes: [.galaxyWide], rarity: .S, trait: .none),
        Fish(name: "Golden Jellyfish", size: .medium, biomes: [.galaxyWide], rarity: .S, trait: .none),
        Fish(name: "Dragonfish", size: .large, biomes: [.galaxyWide], rarity: .S, trait: .none),
        Fish(name: "The Lunker", size: .colossal, biomes: [.galaxyWide], rarity: .S, trait: .none),

        // toxic
        Fish(name: "Bileworm", size: .small, biomes: [.toxic], rarity: .C, trait: .none),
        Fish(name: "Venomous Triggerfin", size: .small, biomes: [.toxic], rarity: .C, trait: .none),
        // unknown
//        Fish(name: "Pondskipper", size: .small, biomes: [.toxic], rarity: .C, trait: .none),
        Fish(name: "Blistering Eel", size: .medium, biomes: [.toxic], rarity: .C, trait: .none),
        Fish(name: "Toxic Jelly", size: .medium, biomes: [.toxic], rarity: .C, trait: .night),
        Fish(name: "Green-Ring Octopus", size: .large, biomes: [.toxic], rarity: .C, trait: .none),
        Fish(name: "Giant Whiskerfish", size: .colossal, biomes: [.toxic], rarity: .C, trait: .none),
        Fish(name: "Caustic Urchin", size: .small, biomes: [.toxic], rarity: .B, trait: .none),
        Fish(name: "Weltscale Clam", size: .small, biomes: [.toxic], rarity: .B, trait: .none),
        Fish(name: "Acidic Pufferfish", size: .medium, biomes: [.toxic], rarity: .B, trait: .storm),
        Fish(name: "Toxic Stonefish", size: .medium, biomes: [.toxic], rarity: .B, trait: .none),
        Fish(name: "Venomtooth Wriggler", size: .large, biomes: [.toxic], rarity: .B, trait: .none),
        Fish(name: "Bitterscale Ray", size: .colossal, biomes: [.toxic], rarity: .B, trait: .none),
        Fish(name: "Waspfish", size: .small, biomes: [.toxic], rarity: .A, trait: .day),
        Fish(name: "Scorpionfish", size: .medium, biomes: [.toxic], rarity: .A, trait: .none),
        Fish(name: "Shrieking Venttail", size: .large, biomes: [.toxic], rarity: .A, trait: .none),
        Fish(name: "Viper Eel", size: .colossal, biomes: [.toxic], rarity: .A, trait: .none),
        Fish(name: "Emeril Sunstar", size: .small, biomes: [.toxic], rarity: .S, trait: .none),
        Fish(name: "Vampire Squid", size: .medium, biomes: [.toxic], rarity: .S, trait: .night),
        Fish(name: "Bleached Bonefish", size: .large, biomes: [.toxic], rarity: .S, trait: .none),
        Fish(name: "Translucent Gulper", size: .colossal, biomes: [.toxic], rarity: .S, trait: .none),

        // irradiated
        Fish(name: "Bulging Snapper", size: .small, biomes: [.irradiated], rarity: .C, trait: .none),
        Fish(name: "Spotted Protofin", size: .small, biomes: [.irradiated], rarity: .C, trait: .none),
        Fish(name: "Field's Dartfish", size: .small, biomes: [.irradiated], rarity: .C, trait: .none),
        Fish(name: "Forktail Splicer", size: .medium, biomes: [.irradiated], rarity: .C, trait: .storm),
        Fish(name: "Inverted Snapper", size: .medium, biomes: [.irradiated], rarity: .C, trait: .night),
        Fish(name: "Glowing Catfish", size: .large, biomes: [.irradiated], rarity: .C, trait: .night),
        Fish(name: "Polyscale Bloater", size: .colossal, biomes: [.irradiated], rarity: .C, trait: .none),
        Fish(name: "Ionized Clam", size: .small, biomes: [.irradiated], rarity: .B, trait: .none),
        Fish(name: "Nucleic Skipper", size: .small, biomes: [.irradiated], rarity: .B, trait: .day),
        Fish(name: "Twisted Gulper", size: .medium, biomes: [.irradiated], rarity: .B, trait: .none),
        Fish(name: "Depleted Razorjaw", size: .medium, biomes: [.irradiated], rarity: .B, trait: .none),
        Fish(name: "Radiant Sunfish", size: .large, biomes: [.irradiated], rarity: .B, trait: .day),
        Fish(name: "Boiling Shark", size: .colossal, biomes: [.irradiated], rarity: .B, trait: .storm),
        Fish(name: "Geno-Prawn", size: .small, biomes: [.irradiated], rarity: .A, trait: .none),
        Fish(name: "Immortal Flatfish", size: .medium, biomes: [.irradiated], rarity: .A, trait: .none),
        Fish(name: "Cyclopic Eel", size: .large, biomes: [.irradiated], rarity: .A, trait: .none),
        Fish(name: "Alpha Squid", size: .colossal, biomes: [.irradiated], rarity: .A, trait: .none),
        // unknown
//        Fish(name: "Singing Sea-Snail", size: .small, biomes: [.irradiated], rarity: .S, trait: .none),
        Fish(name: "Aberrant Duskfin", size: .medium, biomes: [.irradiated], rarity: .S, trait: .night),
        Fish(name: "Gamma Squid", size: .large, biomes: [.irradiated], rarity: .S, trait: .none),
        Fish(name: "Helix Sawfish", size: .colossal, biomes: [.irradiated], rarity: .S, trait: .none),

        // scorched
        Fish(name: "Oilfin", size: .small, biomes: [.hot], rarity: .C, trait: .night),
        Fish(name: "Common Sunfish", size: .small, biomes: [.hot], rarity: .C, trait: .day),
        Fish(name: "Ash Snail", size: .small, biomes: [.hot], rarity: .C, trait: .none),
        Fish(name: "Boiled Snapper", size: .medium, biomes: [.hot], rarity: .C, trait: .none),
        Fish(name: "Lavascale Trout", size: .medium, biomes: [.hot], rarity: .C, trait: .none),
        Fish(name: "Sulpherfish", size: .large, biomes: [.hot], rarity: .C, trait: .storm),
        Fish(name: "Basalt-tooth Bloater", size: .colossal, biomes: [.hot], rarity: .C, trait: .none),
        Fish(name: "Lamptip Ray", size: .small, biomes: [.hot], rarity: .B, trait: .night),
        Fish(name: "Pyrefin", size: .small, biomes: [.hot], rarity: .B, trait: .none),
        Fish(name: "Flashfire Eel", size: .medium, biomes: [.hot], rarity: .B, trait: .storm),
        Fish(name: "Solar Roach", size: .medium, biomes: [.hot], rarity: .B, trait: .day),
        Fish(name: "Fumarole Gulper", size: .large, biomes: [.hot], rarity: .B, trait: .none),
        Fish(name: "Colossal Meltfin", size: .colossal, biomes: [.hot], rarity: .B, trait: .none),
        Fish(name: "Cadmium Pearlcase", size: .small, biomes: [.hot], rarity: .A, trait: .none),
        Fish(name: "Candelabra Octopus", size: .medium, biomes: [.hot], rarity: .A, trait: .none),
        Fish(name: "Magma Shark", size: .large, biomes: [.hot], rarity: .A, trait: .none),
        Fish(name: "Hellion Bass", size: .colossal, biomes: [.hot], rarity: .A, trait: .none),
//        Fish(name: "Singing Sea-Snail", size: .small, biomes: [.hot], rarity: .S, trait: .none),
        Fish(name: "Mirrorscale Skipper", size: .medium, biomes: [.hot], rarity: .S, trait: .none),
//        Fish(name: "Dragonfish", size: .large, biomes: [.hot], rarity: .S, trait: .none),
        Fish(name: "Ancient Irontail", size: .colossal, biomes: [.hot], rarity: .S, trait: .none),

        // cold
        Fish(name: "Ice Darter", size: .small, biomes: [.cold], rarity: .C, trait: .none),
        Fish(name: "Frozen Whelk", size: .small, biomes: [.cold], rarity: .C, trait: .none),
        Fish(name: "Frostscale Trout", size: .small, biomes: [.cold], rarity: .C, trait: .none),
        Fish(name: "Midnight Eel", size: .medium, biomes: [.cold], rarity: .C, trait: .night),
        Fish(name: "Thawed Diamondfin", size: .medium, biomes: [.cold], rarity: .C, trait: .day),
        Fish(name: "Glacier Carp", size: .large, biomes: [.cold], rarity: .C, trait: .none),
        Fish(name: "Giant Hairy Crab", size: .colossal, biomes: [.cold], rarity: .C, trait: .none),
        Fish(name: "Frostshell Clam", size: .small, biomes: [.cold], rarity: .B, trait: .none),
        Fish(name: "Frozen Isopod", size: .small, biomes: [.cold], rarity: .B, trait: .none),
        Fish(name: "Brineskipper", size: .medium, biomes: [.cold], rarity: .B, trait: .none),
        Fish(name: "Pale Snowtail", size: .medium, biomes: [.cold], rarity: .B, trait: .none),
        Fish(name: "Frozen Knifejaw", size: .large, biomes: [.cold], rarity: .B, trait: .none),
        Fish(name: "Giant Icefin", size: .colossal, biomes: [.cold], rarity: .B, trait: .none),
        Fish(name: "Rimescale Snapper", size: .small, biomes: [.cold], rarity: .A, trait: .none),
        Fish(name: "Iceshell Turtle", size: .medium, biomes: [.cold], rarity: .A, trait: .storm),
        Fish(name: "Frostbite Ray", size: .large, biomes: [.cold], rarity: .A, trait: .none),
        Fish(name: "Black-eyed Shark", size: .colossal, biomes: [.cold], rarity: .A, trait: .none),
        Fish(name: "Crystal Jelly", size: .small, biomes: [.cold], rarity: .S, trait: .none),
//        Fish(name: "Golden Jellyfish", size: .medium, biomes: [.cold], rarity: .S, trait: .none),
//        Fish(name: "Dragonfish", size: .large, biomes: [.cold], rarity: .S, trait: .none),
        Fish(name: "Nautilia", size: .colossal, biomes: [.cold], rarity: .S, trait: .none),

        // lush
        Fish(name: "Shadowfin", size: .small, biomes: [.lush], rarity: .C, trait: .night),
        Fish(name: "Warty Frogfish", size: .small, biomes: [.lush], rarity: .C, trait: .day),
        Fish(name: "Common Shimmertail", size: .small, biomes: [.lush], rarity: .C, trait: .none),
        Fish(name: "Wandering Kelpfin", size: .medium, biomes: [.lush], rarity: .C, trait: .night),
        Fish(name: "Clearwater Skipper", size: .medium, biomes: [.lush], rarity: .C, trait: .day),
        Fish(name: "Flourishing Shalefish", size: .large, biomes: [.lush], rarity: .C, trait: .none),
        Fish(name: "Warden Eel", size: .colossal, biomes: [.lush], rarity: .C, trait: .none),
        Fish(name: "Sweetwater Minnow", size: .small, biomes: [.lush], rarity: .B, trait: .none),
        Fish(name: "Mellifluous Jellyfish", size: .small, biomes: [.lush], rarity: .B, trait: .none),
//        Fish(name: "Hypnotic Octopus", size: .medium, biomes: [.lush], rarity: .B, trait: .none),
        Fish(name: "Jungle Redfin", size: .medium, biomes: [.lush], rarity: .B, trait: .none),
        Fish(name: "Marrow Shark", size: .large, biomes: [.lush], rarity: .B, trait: .none),
        Fish(name: "Giant Sunray", size: .colossal, biomes: [.lush], rarity: .B, trait: .day),
        Fish(name: "Wispscale Darter", size: .small, biomes: [.lush], rarity: .A, trait: .none),
        Fish(name: "Deepwater Angler", size: .medium, biomes: [.lush], rarity: .A, trait: .none),
        Fish(name: "Sunspine Basker", size: .large, biomes: [.lush], rarity: .A, trait: .day),
        Fish(name: "Colossal Mossback", size: .colossal, biomes: [.lush], rarity: .A, trait: .none),
        Fish(name: "Glass Angel", size: .small, biomes: [.lush], rarity: .S, trait: .none),
        Fish(name: "Mist Serpent", size: .medium, biomes: [.lush], rarity: .S, trait: .none),
        Fish(name: "Reef Guardian", size: .large, biomes: [.lush], rarity: .S, trait: .none),
        Fish(name: "Blind Titancore", size: .colossal, biomes: [.lush], rarity: .S, trait: .none),

        // arid
        Fish(name: "Fool's Goldfish", size: .small, biomes: [.arid], rarity: .C, trait: .none),
        Fish(name: "Lesser Dustfin", size: .small, biomes: [.arid], rarity: .C, trait: .none),
        Fish(name: "Briny Worm", size: .small, biomes: [.arid], rarity: .C, trait: .storm),
        Fish(name: "Chalkscale Nibbler", size: .medium, biomes: [.arid], rarity: .C, trait: .none),
        Fish(name: "Sweeperfish", size: .medium, biomes: [.arid], rarity: .C, trait: .none),
        Fish(name: "Twilight Cavefish", size: .large, biomes: [.arid], rarity: .C, trait: .night),
        Fish(name: "Greater Rocktooth", size: .colossal, biomes: [.arid], rarity: .C, trait: .none),
        Fish(name: "Bladdersac", size: .small, biomes: [.arid], rarity: .B, trait: .none),
        Fish(name: "Shalebound Starfish", size: .small, biomes: [.arid], rarity: .B, trait: .none),
        Fish(name: "Electric Eel", size: .medium, biomes: [.arid], rarity: .B, trait: .none),
        Fish(name: "Silicate Crab", size: .medium, biomes: [.arid], rarity: .B, trait: .none),
        Fish(name: "Mantis Ray", size: .large, biomes: [.arid], rarity: .B, trait: .none),
        Fish(name: "Saltscale Bloater", size: .colossal, biomes: [.arid], rarity: .B, trait: .none),
        Fish(name: "Golden Urchin", size: .small, biomes: [.arid], rarity: .A, trait: .day),
        Fish(name: "Bewitchiing Candlefish", size: .medium, biomes: [.arid], rarity: .A, trait: .night),
        Fish(name: "Ferrite Bowfin", size: .large, biomes: [.arid], rarity: .A, trait: .none),
        Fish(name: "Cave Prowler", size: .colossal, biomes: [.arid], rarity: .A, trait: .none),
        Fish(name: "Fragile Icthyoscale", size: .small, biomes: [.arid], rarity: .S, trait: .none),
        Fish(name: "Titanworm Larva", size: .medium, biomes: [.arid], rarity: .S, trait: .none),
        Fish(name: "Ossified Deinosuchus", size: .large, biomes: [.arid], rarity: .S, trait: .none),
        Fish(name: "Megalodon", size: .colossal, biomes: [.arid], rarity: .S, trait: .none),

        // haunted
        Fish(name: "Vectorfin", size: .small, biomes: [.haunted], rarity: .C, trait: .none),
        Fish(name: "Hexscale Minnow", size: .small, biomes: [.haunted], rarity: .C, trait: .none),
        Fish(name: "Aurora Jellyfish", size: .small, biomes: [.haunted], rarity: .C, trait: .night),
        Fish(name: "Murmurfish", size: .medium, biomes: [.haunted], rarity: .C, trait: .none),
        Fish(name: "Inverted Brainfish", size: .medium, biomes: [.haunted], rarity: .C, trait: .storm),
        Fish(name: "Shimmering Lashtail", size: .large, biomes: [.haunted], rarity: .C, trait: .none),
        Fish(name: "Breach Crawler", size: .colossal, biomes: [.haunted], rarity: .C, trait: .storm),
        Fish(name: "Anemone Anomaly", size: .small, biomes: [.haunted], rarity: .B, trait: .none),
        Fish(name: "Erased Clam", size: .small, biomes: [.haunted], rarity: .B, trait: .none),
        Fish(name: "Writhing Brainworm", size: .medium, biomes: [.haunted], rarity: .B, trait: .none),
        Fish(name: "Stargazer", size: .medium, biomes: [.haunted], rarity: .B, trait: .night),
        Fish(name: "Non-Euclidean Flatfish", size: .large, biomes: [.haunted], rarity: .B, trait: .none),
        Fish(name: "Sunspot Eel", size: .colossal, biomes: [.haunted], rarity: .B, trait: .day),
        Fish(name: "All-Seeing Worm", size: .small, biomes: [.haunted], rarity: .A, trait: .none),
        Fish(name: "Screaming Crab", size: .medium, biomes: [.haunted], rarity: .A, trait: .none),
        Fish(name: "Giant Witchfin", size: .large, biomes: [.haunted], rarity: .A, trait: .none),
        Fish(name: "Void Squid", size: .colossal, biomes: [.haunted], rarity: .A, trait: .night),
//        Fish(name: "Singing Sea-Snail", size: .small, biomes: [.haunted], rarity: .S, trait: .none),
//        Fish(name: "Golden Jellyfish", size: .medium, biomes: [.haunted], rarity: .S, trait: .none),
        Fish(name: "Child of Helios", size: .large, biomes: [.haunted], rarity: .S, trait: .none),
        Fish(name: "Many-Mouthed Lunker", size: .colossal, biomes: [.haunted], rarity: .S, trait: .none),
    ]

    static let testBaitData: [Bait] = [
        Bait(name: "Mealworms", rarityIncreasePercent: 20, sizeIncreasePercent: 2, trait: .none),
        Bait(name: "Spicy Chum", rarityIncreasePercent: 54, sizeIncreasePercent: 2, trait: .none),
        Bait(name: "Dangling Orb", rarityIncreasePercent: 24, sizeIncreasePercent: 2, trait: .day),
        Bait(name: "Shadow Lure", rarityIncreasePercent: 24, sizeIncreasePercent: 2, trait: .night),
        Bait(name: "Magpulse Lure", rarityIncreasePercent: 24, sizeIncreasePercent: 2, trait: .storm),
        Bait(name: "Bionic Lure", rarityIncreasePercent: 64, sizeIncreasePercent: 2, trait: .none)
    ]

    @Published var selectedBiome: Biome = .hot {
        didSet {
            updateAvailableFish()
        }
    }
    @Published var selectedBait: Bait? = nil
    @Published var availableFish: [Fish] = []
    @Published var catches: [Catch] = []

    // Function to calculate base rarity probabilities from data without bait
    var baseRarityProbabilities: [Rarity: Double] {
        let noBaitCatches = catches.filter { $0.baitUsed == nil }
        let totalNoBaitCatches = noBaitCatches.count

        guard totalNoBaitCatches > 0 else {
            // Return zeros if no data is available
            return Rarity.allCases.reduce(into: [:]) { $0[$1] = 0 }
        }

        var rarityCounts = Rarity.allCases.reduce(into: [:]) { $0[$1] = 0 }

        for catchEntry in noBaitCatches {
            rarityCounts[catchEntry.fish.rarity, default: 0] += 1
        }

        // Calculate percentages
        let rarityPercentages = rarityCounts.mapValues { Double($0) / Double(totalNoBaitCatches) * 100 }

        return rarityPercentages
    }

    // Function to calculate base size probabilities from data without bait
    var baseSizeProbabilities: [FishSize: Double] {
        let noBaitCatches = catches.filter { $0.baitUsed == nil }
        let totalNoBaitCatches = noBaitCatches.count

        guard totalNoBaitCatches > 0 else {
            // Return zeros if no data is available
            return FishSize.allCases.reduce(into: [:]) { $0[$1] = 0 }
        }

        var sizeCounts = FishSize.allCases.reduce(into: [:]) { $0[$1] = 0 }

        for catchEntry in noBaitCatches {
            sizeCounts[catchEntry.fish.size, default: 0] += 1
        }

        // Calculate percentages
        let sizePercentages = sizeCounts.mapValues { Double($0) / Double(totalNoBaitCatches) * 100 }

        return sizePercentages
    }

    init() {
        loadCatches()
        updateAvailableFish()
    }

    func updateAvailableFish() {
        availableFish = FishViewModel.testFishData.filter { fish in
            fish.biomes.contains(selectedBiome) || fish.biomes.contains(.galaxyWide)
        }
    }
    
    func recordCatch(fish: Fish) {
        let newCatch = Catch(fish: fish, dateCaught: Date(), baitUsed: selectedBait)
        catches.append(newCatch)
        saveCatches()
    }
    
    func saveCatches() {
        if let encoded = try? JSONEncoder().encode(catches) {
            UserDefaults.standard.set(encoded, forKey: "catches")
        }
    }
    
    func loadCatches() {
        if let savedData = UserDefaults.standard.data(forKey: "catches"),
           let decoded = try? JSONDecoder().decode([Catch].self, from: savedData) {
            catches = decoded
        }
    }
    
    func resetCatches() {
        catches.removeAll()
        UserDefaults.standard.removeObject(forKey: "catches")
    }
    
    func expectedRarityDistribution(for bait: Bait?) -> [Rarity: Double] {
        let baseProbabilities = baseRarityProbabilities

        guard let bait = bait else {
            // Return base probabilities if no bait is used
            return baseProbabilities
        }

        var adjustedProbabilities = baseProbabilities

        // Increase probabilities based on bait's rarityIncreasePercent
        for rarity in Rarity.allCases {
            adjustedProbabilities[rarity]! *= (1 + bait.rarityIncreasePercent / 100)
        }

        // Normalize the probabilities to sum to 100%
        let total = adjustedProbabilities.values.reduce(0, +)
        if total > 0 {
            adjustedProbabilities = adjustedProbabilities.mapValues { ($0 / total) * 100 }
        }

        return adjustedProbabilities
    }
    
    func expectedSizeDistribution(for bait: Bait?) -> [FishSize: Double] {
        let baseProbabilities = baseSizeProbabilities

        guard let bait = bait else {
            // Return base probabilities if no bait is used
            return baseProbabilities
        }

        var adjustedProbabilities = baseProbabilities

        // Increase probabilities based on bait's sizeIncreasePercent
        for size in FishSize.allCases {
            adjustedProbabilities[size]! *= (1 + bait.sizeIncreasePercent / 100)
        }

        // Normalize the probabilities to sum to 100%
        let total = adjustedProbabilities.values.reduce(0, +)
        if total > 0 {
            adjustedProbabilities = adjustedProbabilities.mapValues { ($0 / total) * 100 }
        }

        return adjustedProbabilities
    }
    
    // Actual Rarity Distribution
    func actualRarityDistribution(for bait: Bait?) -> [Rarity: Double] {
        let baitCatches = catches.filter { $0.baitUsed?.name == bait?.name }
        let totalCatches = baitCatches.count

        guard totalCatches > 0 else {
            return Rarity.allCases.reduce(into: [:]) { $0[$1] = 0 }
        }

        var rarityCounts = Rarity.allCases.reduce(into: [:]) { $0[$1] = 0 }

        for catchEntry in baitCatches {
            rarityCounts[catchEntry.fish.rarity, default: 0] += 1
        }

        let rarityPercentages = rarityCounts.mapValues { Double($0) / Double(totalCatches) * 100 }

        return rarityPercentages
    }

    // Actual Size Distribution
    func actualSizeDistribution(for bait: Bait?) -> [FishSize: Double] {
        let baitCatches = catches.filter { $0.baitUsed?.name == bait?.name }
        let totalCatches = baitCatches.count

        guard totalCatches > 0 else {
            return FishSize.allCases.reduce(into: [:]) { $0[$1] = 0 }
        }

        var sizeCounts = FishSize.allCases.reduce(into: [:]) { $0[$1] = 0 }

        for catchEntry in baitCatches {
            sizeCounts[catchEntry.fish.size, default: 0] += 1
        }

        let sizePercentages = sizeCounts.mapValues { Double($0) / Double(totalCatches) * 100 }

        return sizePercentages
    }
}
