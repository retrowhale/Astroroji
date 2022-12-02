//
//  astrorojiApp.swift
//  astroroji
//
//  Created by Deniz Donmezer on 2022-04-21.
//

import SwiftUI

@main
struct astrorojiApp: App {
    //    let persistenceController = PersistenceController.shared
    var network = Network()
    
    
    var body: some Scene {
        WindowGroup {
            MainView()
            //                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(network)
        }
    }
}
