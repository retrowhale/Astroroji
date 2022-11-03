//
//  FirstViewController.swift
//  astroroji
//
//  Created by Deniz Donmezer on 2022-04-21.
//

import SwiftUI

struct MainView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var network: Network
    @EnvironmentObject var shared : Shared
    @EnvironmentObject var networkMonitor : NetworkMonitor
    @State private var showInternetAlertSheet = false

    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TabView{
                        IconView()
                            .tabItem {
                                Label("Horoscopes", systemImage: "star.leadinghalf.filled")
                            }
                        SettingsView()
                            .tabItem {
                                Label("Settings", systemImage: "gear")
                            }
                            .environmentObject(Shared())
                    }
                    .accentColor(.green)
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}





struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(Network())
            .environmentObject(Shared())
            .environmentObject(NetworkMonitor())
    }
}
