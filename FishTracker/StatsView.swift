//
//  StatsView.swift
//  FishTracker
//
//  Created by PJ Gray on 9/15/24.
//


// StatsView.swift
import SwiftUI

struct StatsView: View {
    @ObservedObject var viewModel: FishViewModel

    var body: some View {
        VStack {
            List {
                Section(header: Text("Overall Statistics")) {
                    Text("Total Catches: \(viewModel.catches.count)")
                }

                Section(header: Text("Catches by Rarity")) {
                    ForEach(Rarity.allCases, id: \.self) { rarity in
                        let count = viewModel.catches.filter { $0.fish.rarity == rarity }.count
                        HStack {
                            Text("Rarity \(rarity.rawValue)")
                            Spacer()
                            Text("\(count)")
                        }
                    }
                }

                Section(header: Text("Base Probabilities (No Bait)")) {
                    Text("Rarity Distribution (%):")
                        .font(.subheadline)
                        .padding(.top, 5)
                    ForEach(Rarity.allCases, id: \.self) { rarity in
                        let percentage = viewModel.baseRarityProbabilities[rarity] ?? 0
                        HStack {
                            Text("Rarity \(rarity.rawValue):")
                            Spacer()
                            Text(String(format: "%.1f%%", percentage))
                        }
                    }

                    Text("Size Distribution (%):")
                        .font(.subheadline)
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
                
                Section(header: Text("Catches by Bait")) {
                    ForEach([nil] + FishViewModel.testBaitData, id: \.self) { bait in
                        let baitName = bait?.name ?? "No Bait"
                        let baitCatches = viewModel.catches.filter { $0.baitUsed?.name == bait?.name }
                        VStack(alignment: .leading) {
                            Text(baitName)
                                .font(.headline)
                            HStack {
                                Text("Total Catches:")
                                Spacer()
                                Text("\(baitCatches.count)")
                            }
                            ForEach(Rarity.allCases, id: \.self) { rarity in
                                let count = baitCatches.filter { $0.fish.rarity == rarity }.count
                                HStack {
                                    Text("Rarity \(rarity.rawValue)")
                                    Spacer()
                                    Text("\(count)")
                                }
                            }
                        }
                        .padding(.vertical, 5)
                    }
                }
                
                Section(header: Text("Catches by Trait")) {
                    ForEach(Trait.allCases, id: \.self) { trait in
                        let count = viewModel.catches.filter { $0.fish.trait == trait }.count
                        HStack {
                            Text(trait.rawValue.capitalized)
                            Spacer()
                            Text("\(count)")
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())

            Button(action: {
                viewModel.resetCatches()
            }) {
                Text("Reset Catches")
                    .foregroundColor(.red)
            }
            .padding()
        }
        .navigationTitle("Statistics")
    }
}
