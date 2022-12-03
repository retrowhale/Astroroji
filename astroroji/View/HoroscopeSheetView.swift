//
//  HoroscopeSheetView.swift
//  astroroji
//
//  Created by Deniz Donmezer on 2022-09-13.
//

import SwiftUI

struct HoroscopeSheetView: View {
    
    @EnvironmentObject var network: Network
    
    var body: some View {
        VStack{
            VStack {
                Text(network.sign)
                    .font(.title)
                    .bold()
                Text(network.dateRange)
            }
            VStack{
                Text("Date: \(network.currentDate)")
            }
            VStack{
                Text("Lucky Time : \(network.luckyTime)")
                Text("Lucky No : \(network.luckyNumber)")
                Text("Mood: \(network.mood)")
                Text("Color : \(network.color)")
                Text("Compatibility : \(network.compatibility)")
            }.padding()
            Text("Daily Reading : \(network.aztroDescription)")
        }.padding()
    }
}



struct HoroscopeSheetView_Previews: PreviewProvider {
    static var previews: some View {
        HoroscopeSheetView()
            .environmentObject(Network())
    }
}
