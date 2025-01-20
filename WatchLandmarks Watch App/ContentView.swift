//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Cameron Reynolds on 2024-12-27.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .task {
                let center = UNUserNotificationCenter.current()
                _ = try? await center.requestAuthorization(options: [.alert, .sound, .badge])
            }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
