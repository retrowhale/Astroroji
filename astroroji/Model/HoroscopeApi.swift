//
//  ApiCall.swift
//  astroroji
//
//  Created by Deniz Donmezer on 2022-04-21.
//

import Foundation
import Network

// MARK: - HoroscopeAPIJsonFile
struct HoroscopeAPI: Decodable {
    let sign: String?
    let date: String?
    let horoscope: String?
}


class Network: ObservableObject {
    // MARK: - To push text to view
    @Published var sign : String = ""
    @Published var date : String = ""
    @Published var horoscopeInfo : String = ""
    @Published var horoscopeArray = []
    
    // MARK: - APIURLS
    @Published var aquariusURL = "https://ohmanda.com/api/horoscope/aquarius/"
    @Published var picsecURL =  "https://ohmanda.com/api/horoscope/pisces/"
    @Published var ariesURL = "https://ohmanda.com/api/horoscope/aries/"
    @Published var taurusURL = "https://ohmanda.com/api/horoscope/taurus/"
    @Published var geminiURL = "https://ohmanda.com/api/horoscope/gemini/"
    @Published var cancerURL = "https://ohmanda.com/api/horoscope/cancer/"
    @Published var leoURL = "https://ohmanda.com/api/horoscope/leo/"
    @Published var virgoURL = "https://ohmanda.com/api/horoscope/virgo/"
    @Published var libraURL = "https://ohmanda.com/api/horoscope/libra/"
    @Published var scorpioURL = "https://ohmanda.com/api/horoscope/scorpio/"
    @Published var sagittariusURL = "https://ohmanda.com/api/horoscope/sagittarius/"
    @Published var capricornURL = "https://ohmanda.com/api/horoscope/capricorn/"
    
    
    // MARK: - APICallFunction
    
 
    func getHoroscope(urlString: String) {
        
        guard let url = URL(string: urlString) else { fatalError("invalid url")}
        let urlRequest = URLRequest(url: url)
        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if let error = error {
                print("Request error:", error)
                return
            }
            guard let response = response as? HTTPURLResponse else {return}
            
            if response.statusCode == 200 {
                guard let data = data else {return}
                DispatchQueue.main.async {
                    do {
                        let decodedHoroscope = try JSONDecoder().decode(HoroscopeAPI.self, from: data)
                        self.sign = decodedHoroscope.sign!
                        self.date = decodedHoroscope.date!
                        self.horoscopeInfo = decodedHoroscope.horoscope!
                        
                    }catch let error {
                        print("Error decoding:", error)
                    }
                }
            }
        }
        dataTask.resume()
    }
}
