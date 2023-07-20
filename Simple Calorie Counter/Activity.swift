//
//  Activity.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/19/23.
//

import Foundation

class Activity:ObservableObject {
    
    var calories: Int16;
    
    init(calories: Int16) {
        self.calories = calories;
    }
}
