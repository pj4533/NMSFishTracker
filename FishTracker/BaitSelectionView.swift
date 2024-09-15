//
//  BaitSelectionView.swift
//  FishTracker
//
//  Created by PJ Gray on 9/15/24.
//


// BaitSelectionView.swift
import SwiftUI

struct BaitSelectionView: View {
    @ObservedObject var viewModel: FishViewModel

    var body: some View {
        Picker("Select Bait", selection: $viewModel.selectedBait) {
            Text("No Bait").tag(Bait?.none)
            ForEach(FishViewModel.testBaitData) { bait in
                Text(bait.name).tag(Optional(bait))
            }
        }
        .pickerStyle(MenuPickerStyle())
    }
}
