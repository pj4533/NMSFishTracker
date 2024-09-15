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
                // Base Probabilities Section
                if viewModel.catches.contains(where: { $0.baitUsed == nil }) {
                    BaseProbabilitiesView(viewModel: viewModel)
                }

                // Catches by Bait Section
                BaitStatisticsListView(viewModel: viewModel)
            }
            .listStyle(GroupedListStyle())

            // Reset Catches Button
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
