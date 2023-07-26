//
//  Food.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/18/23.
//

import Foundation

class Food: Identifiable, ObservableObject, Hashable, Equatable {
    var id = UUID()
    var name: String;
    var calories: Int64;
    var protein: Int64;
    
    var isActivity: Bool {
        return (calories < 0)
    }
    
    init(name: String, calories: Int64, protein: Int64) {
        self.name = name
        self.calories = calories
        self.protein = protein
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func ==(lhs: Food, rhs: Food) -> Bool {
        return lhs.id == rhs.id
    }
}
