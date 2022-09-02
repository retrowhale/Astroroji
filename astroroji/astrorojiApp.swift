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
    
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            //                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            
            BottomTabView()
                .frame(maxHeight: 50, alignment: .bottom)
            
        }
    }
}
