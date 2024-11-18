//
//  File.swift
//  SwiftUI-Weather
//
//  Created by Austin Pearman on 11/17/24.
//

import Foundation

struct Weather {
    
    enum Day: String {
        case monday = "MON"
        case tuesday = "TUE"
        case wednesday = "WED"
        case thursday = "THU"
        case friday = "FRI"
        case saturday = "SAT"
        case sunday = "SUN"
    }
    
    var dayOfWeek: Day?
    var imageName: String
    var temperature: Int
}
