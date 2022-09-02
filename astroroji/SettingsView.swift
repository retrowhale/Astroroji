//
//  HoroscopeSettingsView.swift
//  astroroji
//
//  Created by Deniz Donmezer on 2022-07-28.
//MARK: - To do


import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView{
            Form{
                Text("Account")
                Section{
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
