//
//  Food.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/18/23.
//

import Foundation

class Food: Identifiable {
    var id = UUID()
    var name: String;
    var calories: Int16;
    var protein: Int16;
    
    init(name: String, calories: Int16, protein: Int16) {
        self.name = name;
        self.calories = calories;
        self.protein = protein;
    }
}
