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
    @State private var selectedFish: Fish?
    @State private var showConfirmation = false

    var body: some View {
        List(viewModel.availableFish) { fish in
            Button(action: {
                selectedFish = fish
                showConfirmation = true
            }) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(fish.name)
                        Text("Trait: \(fish.trait.rawValue.capitalized)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                    Text("Rarity \(fish.rarity.rawValue)")
                        .foregroundColor(.gray)
                }
            }
        }
        .alert(isPresented: $showConfirmation) {
            Alert(
                title: Text("Confirm Catch"),
                message: Text("Caught: \(selectedFish?.name ?? "Unknown Fish")"),
                primaryButton: .default(Text("Yes")) {
                    if let fish = selectedFish {
                        viewModel.recordCatch(fish: fish)
                    }
                },
                secondaryButton: .cancel(Text("No"))
            )
        }
    }
}
