//
//  ApiCall.swift
//  astroroji
//
//  Created by Deniz Donmezer on 2022-04-21.
//

import Foundation
import Network

// MARK: - HoroscopeAPIJsonFile
struct HoroscopeAPI: Codable {

    let currentDate, compatibility, luckyTime, luckyNumber: String?
    let color, dateRange, mood, aztroDescription: String?
    
    enum CodingKeys: String, CodingKey {
        case currentDate = "current_date"
        case compatibility
        case luckyTime = "lucky_time"
        case luckyNumber = "lucky_number"
        case color
        case dateRange = "date_range"
        case mood
        case aztroDescription = "description"
    }
    
    
}


class Network: ObservableObject {
    // MARK: - To push text to view
    @Published var currentDate : String = ""
    @Published var aztroDescription : String = ""
    @Published var compatibility : String = ""
    @Published var luckyTime : String = ""
    @Published var color : String = ""
    @Published var dateRange : String = ""
    @Published var mood : String = ""
    @Published var sign : String = ""
    @Published var luckyNumber: String = ""
    

    
    // MARK: - APICallFunction
    
    func getHoroscope(horoscope: String, date: String) {
           
           guard let url = URL(string: "https://aztro.sameerkumar.website/?sign=\(horoscope)&day=\(date)") else { fatalError("invalid url")}
           var urlRequest = URLRequest(url: url)
           urlRequest.httpMethod = "POST"
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
                           self.currentDate = decodedHoroscope.currentDate!
                           self.aztroDescription = decodedHoroscope.aztroDescription!
                           self.compatibility = decodedHoroscope.compatibility!
                           self.luckyTime = decodedHoroscope.luckyTime!
                           self.luckyNumber = decodedHoroscope.luckyNumber!
                           self.color = decodedHoroscope.color!
                           self.dateRange = decodedHoroscope.dateRange!
                           self.mood = decodedHoroscope.mood!
                       }catch let error {
                           print("Error decoding:", error)
                       }
                   }
               }
           }
           dataTask.resume()
       }
}
