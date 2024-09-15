//
//  ContentView.swift
//  FishTracker
//
//  Created by PJ Gray on 9/15/24.
//

// ContentView.swift
import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = FishViewModel()

    var body: some View {
        NavigationView {
            VStack {
                BiomeSelectionView(viewModel: viewModel)
                    .padding()
                BaitSelectionView(viewModel: viewModel)
                    .padding()
                FishListView(viewModel: viewModel)
                NavigationLink(destination: StatsView(viewModel: viewModel)) {
                    Text("View Statistics")
                }
                .padding()
            }
            .navigationTitle("Fish Tracker")
        }
    }
}
