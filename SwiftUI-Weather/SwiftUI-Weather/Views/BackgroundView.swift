//
//  SwiftUIView.swift
//  SwiftUI-Weather
//
//  Created by Austin Pearman on 11/17/24.
//

import SwiftUI

struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
        
    }
}

/*#Preview {
    @State var isNight = false
    
    BackgroundView(isNight: $isNight)
}*/
