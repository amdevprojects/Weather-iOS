//
//  WeatherResponse.swift
//  Weather
//
//  Created by TTNPL-3940 on 04/01/24.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double?
    let tempMin: Double?
    let tempMax: Double?
}
