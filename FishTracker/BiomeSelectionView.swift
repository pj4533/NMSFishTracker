//
//  BiomeSelectionView.swift
//  FishTracker
//
//  Created by PJ Gray on 9/15/24.
//


// BiomeSelectionView.swift
import SwiftUI

struct BiomeSelectionView: View {
    @ObservedObject var viewModel: FishViewModel

    var body: some View {
        Picker("Select Biome", selection: $viewModel.selectedBiome) {
            ForEach(Biome.allCases, id: \.self) { biome in
                Text(biome.rawValue.capitalized).tag(biome)
            }
        }
        .pickerStyle(MenuPickerStyle())
    }
}
