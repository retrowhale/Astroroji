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
                        network.getHoroscope(horoscope: "aquarius", date: "today")
                        network.sign = "Aquarius"
                        showingSheet.toggle()
                        print("aquarius")
                    } label : {
                        Image("Aquarius")
                            .resizable()
                            .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                        network.getHoroscope(horoscope: "picses", date: "today")
                        network.sign = "Pisces"
                        showingSheet.toggle()
                        print("pisces")
                    } label : {
                        Image("Pisces")
                            .resizable()
                            .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                        network.getHoroscope(horoscope: "aries", date: "today")
                        network.sign = "Aries"
                        showingSheet.toggle()
                        print("aries")
                    } label: {
                        Image("Aries")
                            .resizable()
                            .padding(.leading, -10.0)
                            .scaledToFit()
                    }
                }
            }
            HStack {
                ZStack {
                    Button {
                        network.getHoroscope(horoscope: "taurus", date: "today")
                        network.sign = "Taurus"
                        showingSheet.toggle()
                        print("taurus")
                    } label : {
                        Image("Taurus")
                            .resizable()
                            .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                        network.getHoroscope(horoscope: "gemini", date: "today")
                        network.sign = "Gemini"
                        showingSheet.toggle()
                        print("gemini")
                    } label : {
                        Image("Gemini")
                            .resizable()
                            .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                        network.getHoroscope(horoscope: "cancer", date: "today")
                        network.sign = "Cancer"
                        showingSheet.toggle()
                        print("cancer")
                    } label : {
                        Image("Cancer")
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
            HStack {
                ZStack {
                    Button {
                        network.getHoroscope(horoscope: "leo", date: "today")
                        network.sign = "Leo"
                        showingSheet.toggle()
                        print("leo")
                    } label : {
                        Image("Leo")
                            .resizable()
                            .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                        network.getHoroscope(horoscope: "virgo", date: "today")
                        network.sign = "Virgo"
                        showingSheet.toggle()
                        print("virgo")
                    } label : {
                        Image("Virgo")
                            .resizable()
                            .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                        network.getHoroscope(horoscope: "libra", date: "today")
                        network.sign = "Libra"
                        showingSheet.toggle()
                        print("libra")
                    } label : {
                        Image("Libra")
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
            HStack {
                ZStack {
                    Button {
                        network.getHoroscope(horoscope: "scorpio", date: "today")
                        network.sign = "Scorpio"
                        showingSheet.toggle()
                        print("scorpio")
                    } label : {
                        Image("Scorpio")
                            .resizable()
                            .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                        network.getHoroscope(horoscope: "sagittarius", date: "today")
                        network.sign = "Sagittarius"
                        showingSheet.toggle()
                        print("sagittarius")
                    } label : {
                        Image("Sagittarius")
                            .resizable()
                            .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                        network.getHoroscope(horoscope: "capricorn", date: "today")
                        network.sign = "Capricorn"
                        showingSheet.toggle()
                        print("capricorn")
                    } label : {
                        Image("Capricorn")
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

