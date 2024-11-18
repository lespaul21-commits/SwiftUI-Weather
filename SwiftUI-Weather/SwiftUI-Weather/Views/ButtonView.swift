//
//  ButtonView.swift
//  SwiftUI-Weather
//
//  Created by Austin Pearman on 11/17/24.
//

import SwiftUI

struct ButtonView: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundStyle(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .foregroundStyle(Color(.blue))
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
    }
}

#Preview {
    ZStack {
        Color(.black)
            .ignoresSafeArea()
        ButtonView(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
    }
}
