//
//  astrorojiApp.swift
//  astroroji
//
//  Created by Deniz Donmezer on 2022-04-21.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}


@main
struct astrorojiApp: App {
    //    let persistenceController = PersistenceController.shared
    var network = Network()
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    
    var body: some Scene {
        WindowGroup {
            MainView()
            //                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(network)
        }
    }
}
