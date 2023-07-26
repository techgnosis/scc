//
//  PreviewData.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/20/23.
//

import Foundation

struct PreviewData {
    
    static let sundayFood = [
        Food(name: "apple", calories: 100, protein: 0),
        Food(name: "banana", calories: 200, protein: 2),
        Food(name: "chicken", calories: 500, protein: 60),
        Food(name: "1 mile walk", calories: -300, protein: 0)
    ]
    
    static let mondayFood = [
        Food(name: "beef", calories: 800, protein: 120),
        Food(name: "beans", calories: 300, protein: 12),
        Food(name: "15 min jog", calories: -150, protein: 0),
        Food(name: "waffles", calories: 240, protein: 12)
    ]
    
    static let tuesdayFood = [
        Food(name: "yogurt", calories: 250, protein: 16),
        Food(name: "cottage cheese", calories: 220, protein: 16),
        Food(name: "coleslaw", calories: 25, protein: 0)
    ]
    
    
    static let days = [
        Day(name: "Sunday", foods: sundayFood),
        Day(name: "Monday", foods: mondayFood),
        Day(name: "Tuesday", foods: tuesdayFood)
    ]
    
    static let foodCatalog: Set = [
        Food(name: "cottage cheese", calories: 110, protein: 13),
        Food(name: "chicken", calories: 540, protein: 60),
        Food(name: "baked beans", calories: 300, protein: 13)
    ]
    
    static let singleFood: Food = Food(name: "testfood", calories: 1000, protein: 100)
    
    static let singleDay: Day = Day(name: "testday", foods: mondayFood)
        
    static let model: Model = Model(days: days, foodCatalog: foodCatalog)
}
