//
//  FirstViewController.swift
//  astroroji
//
//  Created by Deniz Donmezer on 2022-04-21.
//

import SwiftUI

struct MainView: View {
    
    
    var body: some View {
        VStack {
            HStack {
                Text("Astroroji")
                    .font(.title)
                    .foregroundColor(.green)
            }
            IconView()
        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro"))
            .previewDisplayName("iPhone 13 Pro")
    }
}
