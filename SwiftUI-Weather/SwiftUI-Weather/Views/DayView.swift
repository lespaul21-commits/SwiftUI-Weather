//
//  DayView.swift
//  SwiftUI-Weather
//
//  Created by Austin Pearman on 11/12/24.
//

import SwiftUI

struct DayView: View {
    
    var weather: Weather
    
    var body: some View {
        VStack {
            if let day = weather.dayOfWeek?.rawValue {
                Text(day)
                    .font(.system(size: 16, weight: .medium, design: .default))
                    .foregroundStyle(Color(.white))
            } else {
                Text("nil")
            }
            
            Image(systemName: weather.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(weather.temperature)")
                .font(.system(size: 28))
                .foregroundStyle(Color(.white))
        }
    }
}

#Preview {
    ZStack {
        LinearGradient(colors: [.blue, .white],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .ignoresSafeArea()
        
        DayView(weather: Weather(dayOfWeek: Weather.Day.tuesday, imageName: "sun.fill.max", temperature: 76))
    }
}
