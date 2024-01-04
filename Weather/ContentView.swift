//
//  ContentView.swift
//  Weather
//
//  Created by TTNPL-3940 on 04/01/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject
    var viewModel = WeatherViewModel()
    
    var body: some View {
        VStack {
            TextField("Enter City", text: $viewModel.city) {
                viewModel.fetchWeather()
            }
            Text(String(viewModel.temperature))
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            HStack {
                Text(String(viewModel.minTemp))
                Spacer()
                Text(String(viewModel.maxTemp))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
