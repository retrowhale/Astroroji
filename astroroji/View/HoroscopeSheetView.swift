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
            HStack {
                Text(network.sign)
                    .font(.title)
                    .bold()
            } .padding()
            HStack{
                Text("Date: \(network.date)")
            }.padding()
            Text("Daily Reading : \(network.horoscopeInfo)")
        }.padding()
    }
}

struct HoroscopeSheetView_Previews: PreviewProvider {
    static var previews: some View {
        HoroscopeSheetView()
            .environmentObject(Network())
    }
}
