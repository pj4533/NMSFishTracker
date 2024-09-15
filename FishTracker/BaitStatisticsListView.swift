//
//  BaitStatisticsListView.swift
//  FishTracker
//
//  Created by PJ Gray on 9/15/24.
//


// BaitStatisticsListView.swift

import SwiftUI

struct BaitStatisticsListView: View {
    @ObservedObject var viewModel: FishViewModel

    var body: some View {
        Section(header: Text("Catches by Bait - Expected vs Actual")) {
            ForEach([nil] + FishViewModel.testBaitData, id: \.self) { bait in
                BaitStatisticsView(viewModel: viewModel, bait: bait)
            }
        }
    }
}
