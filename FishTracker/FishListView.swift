//
//  FishListView.swift
//  FishTracker
//
//  Created by PJ Gray on 9/15/24.
//


// FishListView.swift
import SwiftUI

struct FishListView: View {
    @ObservedObject var viewModel: FishViewModel

    var body: some View {
        List(viewModel.availableFish) { fish in
            Button(action: {
                viewModel.recordCatch(fish: fish)
            }) {
                HStack {
                    Text(fish.name)
                    Spacer()
                    Text(fish.rarity.rawValue)
                        .foregroundColor(.gray)
                }
            }
        }
    }
}