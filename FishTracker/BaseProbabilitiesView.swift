//
//  BaseProbabilitiesView.swift
//  FishTracker
//
//  Created by PJ Gray on 9/15/24.
//


// BaseProbabilitiesView.swift

import SwiftUI

struct BaseProbabilitiesView: View {
    @ObservedObject var viewModel: FishViewModel

    var body: some View {
        Section(header: Text("Base Probabilities (No Bait)")) {
            Text("Based on your catches without bait.")
                .font(.subheadline)
                .foregroundColor(.secondary)

            // Base Rarity Probabilities
            Text("Rarity Distribution (%):")
                .font(.headline)
                .padding(.top, 5)
            ForEach(Rarity.allCases, id: \.self) { rarity in
                let percentage = viewModel.baseRarityProbabilities[rarity] ?? 0
                HStack {
                    Text("Rarity \(rarity.rawValue):")
                    Spacer()
                    Text(String(format: "%.1f%%", percentage))
                }
            }

            // Base Size Probabilities
            Text("Size Distribution (%):")
                .font(.headline)
                .padding(.top, 5)
            ForEach(FishSize.allCases, id: \.self) { size in
                let percentage = viewModel.baseSizeProbabilities[size] ?? 0
                HStack {
                    Text("Size \(size.rawValue.capitalized):")
                    Spacer()
                    Text(String(format: "%.1f%%", percentage))
                }
            }
        }
    }
}
