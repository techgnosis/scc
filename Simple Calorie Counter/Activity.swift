//
//  Activity.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/19/23.
//

import Foundation

class Activity: Identifiable {
    var id = UUID()
    var name: String
    var calories: Int
    
    init(name: String, calories: Int) {
        self.name = name
        self.calories = calories
    }
}
