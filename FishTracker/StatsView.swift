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
    @State private var showResetConfirmation = false

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
                showResetConfirmation = true
            }) {
                Text("Reset Catches")
                    .foregroundColor(.red)
            }
            .padding()
            .alert(isPresented: $showResetConfirmation) {
                Alert(
                    title: Text("Confirm Reset"),
                    message: Text("Are you sure you want to reset all catches? This action cannot be undone."),
                    primaryButton: .destructive(Text("Reset")) {
                        viewModel.resetCatches()
                    },
                    secondaryButton: .cancel()
                )
            }
        }
        .navigationTitle("Statistics")
    }
}
