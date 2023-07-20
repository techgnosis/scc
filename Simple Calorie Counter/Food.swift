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
    var calories: Int;
    var protein: Int;
    
    init(name: String, calories: Int, protein: Int) {
        self.name = name;
        self.calories = calories;
        self.protein = protein;
    }
}
