//
//  Constants.swift
//  Weather
//
//  Created by TTNPL-3940 on 04/01/24.
//

import Foundation

struct Constants {
    private static let API_KEY = "7b52ce875ce158f7babd4461f165cc79"
    
    private static let BASE_URL = "https://api.openweathermap.org"
    static let CURRENT_WEATHER_URL = "\(BASE_URL)/data/2.5/weather?units=metric&appid=\(API_KEY)&q="
}
