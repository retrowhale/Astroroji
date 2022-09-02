//
//  HoroscopeBottomTabView.swift
//  astroroji
//
//  Created by Deniz Donmezer on 2022-04-26.
//

import SwiftUI

struct BottomTabView: View {
    var body: some View {
        TabView() {
            MainView()
                .tabItem {
                    Label("Horoscope", systemImage: "star.leadinghalf.filled")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .accentColor(.green)
    }
}


struct BottomTabView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabView()
    }
}
