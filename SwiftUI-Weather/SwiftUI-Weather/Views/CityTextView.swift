//
//  CityTextViw.swift
//  SwiftUI-Weather
//
//  Created by Austin Pearman on 11/17/24.
//

import SwiftUI

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

#Preview {
    
    ZStack {
        CityTextView(cityName: "Denver, CO")
    }
}
