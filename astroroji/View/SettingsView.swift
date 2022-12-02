//
//  HoroscopeSettingsView.swift
//  astroroji
//
//  Created by Deniz Donmezer on 2022-07-28.
//MARK: - To do


import SwiftUI
import UserNotifications


struct SettingsView: View {
    
    @EnvironmentObject var shared : ViewData

    var body: some View {
        NavigationView{
            Form{
                Section{

                    Text("App Version : \(shared.appVersionString)")
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(ViewData())
    }
}
