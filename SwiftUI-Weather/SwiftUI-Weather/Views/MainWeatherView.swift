//
//  MainWeatherView.swift
//  SwiftUI-Weather
//
//  Created by Austin Pearman on 11/17/24.
//

import SwiftUI

struct MainWeatherView: View {
    
    var weather: Weather
    
    var body: some View {
        
        VStack(spacing: 8) {
            Image(systemName: weather.imageName)
                .renderingMode(.template) //gave us the 2-color weather symbol
                .resizable()
                .foregroundStyle(.mint, .orange, .green) //hierarchical color scheme for SF Symbols
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(weather.temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(Color(.white))
                
        }
        .padding(.bottom, 40)
    }
}

#Preview {
    ZStack {
        Color(.black)
            .ignoresSafeArea()
        MainWeatherView(weather: Weather(imageName: "cloud.sun.fill", temperature: 76))
    }
}
