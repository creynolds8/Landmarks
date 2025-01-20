//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Cameron Reynolds on 2025-01-19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
