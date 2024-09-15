//
//  BaitStatisticsView.swift
//  FishTracker
//
//  Created by PJ Gray on 9/15/24.
//


// BaitStatisticsView.swift

import SwiftUI

struct BaitStatisticsView: View {
    @ObservedObject var viewModel: FishViewModel
    let bait: Bait?

    var body: some View {
        let baitName = bait?.name ?? "No Bait"
        let baitCatches = viewModel.catches.filter { $0.baitUsed?.name == bait?.name }
        let totalBaitCatches = baitCatches.count

        VStack(alignment: .leading) {
            Text(baitName)
                .font(.headline)

            Text("Total Catches: \(totalBaitCatches)")
                .font(.subheadline)
                .foregroundColor(.secondary)

            // Expected and Actual Rarity Distribution
            let expectedRarity = viewModel.expectedRarityDistribution(for: bait)
            let actualRarity = viewModel.actualRarityDistribution(for: bait)

            Text("Rarity Distribution (%):")
                .font(.subheadline)
                .padding(.top, 5)

            ForEach(Rarity.allCases, id: \.self) { rarity in
                HStack {
                    Text("Rarity \(rarity.rawValue):")
                    Spacer()
                    Text(String(format: "E: %.1f%%", expectedRarity[rarity] ?? 0))
                        .foregroundColor(.blue)
                    Text("|")
                    Text(String(format: "A: %.1f%%", actualRarity[rarity] ?? 0))
                        .foregroundColor(.green)
                }
            }

            // Expected and Actual Size Distribution
            let expectedSize = viewModel.expectedSizeDistribution(for: bait)
            let actualSize = viewModel.actualSizeDistribution(for: bait)

            Text("Size Distribution (%):")
                .font(.subheadline)
                .padding(.top, 5)

            ForEach(FishSize.allCases, id: \.self) { size in
                HStack {
                    Text("Size \(size.rawValue.capitalized):")
                    Spacer()
                    Text(String(format: "E: %.1f%%", expectedSize[size] ?? 0))
                        .foregroundColor(.blue)
                    Text("|")
                    Text(String(format: "A: %.1f%%", actualSize[size] ?? 0))
                        .foregroundColor(.green)
                }
            }
        }
        .padding(.vertical, 5)
    }
}