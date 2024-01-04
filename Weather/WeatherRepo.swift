//
//  WeatherRepo.swift
//  Weather
//
//  Created by TTNPL-3940 on 04/01/24.
//

import Foundation


class WeatherRepo {
    
    func getWeather(city: String, result: @escaping (Weather?) -> ()) {
        guard let url = URL(string: "\(Constants.CURRENT_WEATHER_URL)\(city)") else {
            result(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                result(nil)
                return
            }
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            let weatherResponse = try? decoder.decode(WeatherResponse.self, from: data)
            if let weatherResponse = weatherResponse {
                let weather = weatherResponse.main
                result(weather)
            } else {
                result(nil)
            }
        }.resume()
    }
    
}
