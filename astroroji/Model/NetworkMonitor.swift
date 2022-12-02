//
//  NetworkMonitor.swift
//  astroroji
//
//  Created by Deniz Donmezer on 2022-10-21.
//

import Foundation
import Network

final class NetworkMonitor: ObservableObject {
    let monitor = NWPathMonitor()
    let queue = DispatchQueue(label: "Monitor")
        
    @Published var connected = true
    
    func checkConnection() {
        monitor.pathUpdateHandler = { path in
            if path.status == .satisfied {
                self.connected = true
            } else {
                self.connected = false
                print("no internet")
            }
        }
        monitor.start(queue: queue)
    }
    
    init() {
        monitor.pathUpdateHandler = { [weak self] path in
            DispatchQueue.main.async {
                self?.connected = path.status == .satisfied ? true : false
            }
        }
        monitor.start(queue: queue)
    }
        

}
