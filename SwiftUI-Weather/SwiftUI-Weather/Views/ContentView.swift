//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Austin Pearman on 11/12/24.
//

import SwiftUI

struct ContentView: View {
    
    //@State: watch this variable, if it changes, update the view accordingly
    //Only use @Binding if you are changing the binded variable in that view
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            
            //Binding isNight to the child view (BackgroundView) isNight variable
            BackgroundView(isNight: isNight)
            
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                
                MainWeatherView(weather: Weather(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                                 temperature: 76))
                
                HStack(spacing: 20) {
                    DayView(weather: Weather(dayOfWeek: Weather.Day.tuesday,
                                             imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                             temperature: 69))
                    DayView(weather: Weather(dayOfWeek: Weather.Day.wednesday,
                                             imageName: isNight ? "moon.haze.fill" : "cloud.moon.bolt.fill",
                                             temperature: 71))
                    DayView(weather: Weather(dayOfWeek: Weather.Day.thursday,
                                             imageName: isNight ? "moon.fill" : "sun.max.fill",
                                             temperature: 85))
                    DayView(weather: Weather(dayOfWeek: Weather.Day.friday,
                                             imageName: "wind.snow",
                                             temperature: 32))
                    DayView(weather: Weather(dayOfWeek: Weather.Day.saturday,
                                             imageName: "tornado",
                                             temperature: 60))
                }
                Spacer()
                
                Button { //action
                    isNight.toggle()
                } label: { //what the button looks like
                    ButtonView(title: "Change Day Time", textColor: .white, backgroundColor: .orange)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
