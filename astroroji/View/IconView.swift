//
//  HoroscopeIconView.swift
//  astroroji
//
//  Created by Deniz Donmezer on 2022-04-21.
//

import SwiftUI

struct IconView: View {
    
    @State var showingSheet = false
    @EnvironmentObject var network: Network
    var horoscopeInformation : [Network]?
    
        
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    Button {
                        network.getHoroscope(urlString: network.aquariusURL)
                        showingSheet.toggle()
                        print("aquarius")
                    } label : {
                        Image("aquarius")
                            .resizable()
                            .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                        network.getHoroscope(urlString: network.picsecURL)
                        showingSheet.toggle()
                        print("pisces")
                    } label : {
                        Image("pisces")
                            .resizable()
                            .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                        network.getHoroscope(urlString: network.ariesURL)
                        showingSheet.toggle()
                        print("aries")
                    } label: {
                        Image("aries")
                            .resizable()
                            .padding(.leading, -10.0)
                            .scaledToFit()
                    }
                }
            }
            HStack {
                ZStack {
                    Button {
                        network.getHoroscope(urlString: network.taurusURL)
                        showingSheet.toggle()
                        print("taurus")
                    } label : {
                        Image("taurus")
                            .resizable()
                            .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                        network.getHoroscope(urlString: network.geminiURL)
                        showingSheet.toggle()
                        print("gemini")
                    } label : {
                        Image("gemini")
                            .resizable()
                            .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                        network.getHoroscope(urlString: network.cancerURL)
                        showingSheet.toggle()
                        print("cancer")
                    } label : {
                        Image("cancer")
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
            HStack {
                ZStack {
                    Button {
                        network.getHoroscope(urlString: network.leoURL)
                        showingSheet.toggle()
                        print("leo")
                    } label : {
                        Image("leo")
                            .resizable()
                            .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                        network.getHoroscope(urlString: network.virgoURL)
                        showingSheet.toggle()
                        print("virgo")
                    } label : {
                        Image("virgo")
                            .resizable()
                            .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                        network.getHoroscope(urlString: network.libraURL)
                        showingSheet.toggle()
                        print("libra")
                    } label : {
                        Image("libra")
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
            HStack {
                ZStack {
                    Button {
                        network.getHoroscope(urlString: network.scorpioURL)
                        showingSheet.toggle()
                        print("scorpio")
                    } label : {
                        Image("scorpio")
                            .resizable()
                            .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                        network.getHoroscope(urlString: network.sagittariusURL)
                        showingSheet.toggle()
                        print("sagittarius")
                    } label : {
                        Image("sagittarius")
                            .resizable()
                            .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                        network.getHoroscope(urlString: network.capricornURL)
                        showingSheet.toggle()
                        print("capricorn")
                    } label : {
                        Image("capricorn")
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
        }
        .sheet(isPresented: $showingSheet, content: {
            HoroscopeSheetView()
        })
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView()
            .environmentObject(Network())
    }
}

