//
//  HoroscopeVIew.swift
//  astroroji
//
//  Created by Deniz Donmezer on 2022-09-02.
//

//import SwiftUI
//
//struct HoroscopeView: View {
//
//    @EnvironmentObject var network: Network
//
//    @State var horoscopeArray = [HoroscopeAPI]()
//
//
//
//
//    var body: some View {
//        VStack{
//            Text(network.horoscopeList.)
//        }
//        .onAppear{
//            network.loadData(urlString: "https://ohmanda.com/api/horoscope/aquarius/") {
//                (horoscopeStruct) in
//                self.horoscopeArray = [horoscopeStruct]
//            }
//        }
//    }
//}
//
//struct HoroscopeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HoroscopeView()
//            .environmentObject(Network())
//
//    }
//}
