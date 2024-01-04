//
//  WeatherViewModel.swift
//  Weather
//
//  Created by TTNPL-3940 on 04/01/24.
//

import Foundation

class WeatherViewModel: ObservableObject {
    
    private let weatherRepo = WeatherRepo()
    
    @Published
    var weather = Weather(temp: nil, tempMin: nil, tempMax: nil)
    
    var city = ""
    
    var temperature: String {
        if let temp = weather.temp {
            return "\(String(format: "%.0f", temp)) C"
        } else {
            return ""
        }
    }
    
    var minTemp: String {
        if let temp = weather.tempMin {
            return "Min: \(String(format: "%.0f", temp)) C"
        } else {
            return ""
        }
    }
    
    var maxTemp: String {
        if let temp = weather.tempMax {
            return "Max: \(String(format: "%.0f", temp)) C"
        } else {
            return ""
        }
    }
    
    func fetchWeather() {
        if let city = city.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) {
            weatherRepo.getWeather(city: city) { result in
                if let result = result {
                    self.weather = result
                }
            }
        }
    }
}
