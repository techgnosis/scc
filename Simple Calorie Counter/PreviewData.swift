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
        Food(name: "chicken", calories: 500, protein: 60)
    ]
    
    static let mondayFood = [
        Food(name: "beef", calories: 800, protein: 120),
        Food(name: "beans", calories: 300, protein: 12),
        Food(name: "waffles", calories: 240, protein: 12)
    ]
    
    static let tuesdayFood = [
        Food(name: "yogurt", calories: 250, protein: 16),
        Food(name: "cottage cheese", calories: 220, protein: 16),
        Food(name: "coleslaw", calories: 25, protein: 0)
    ]
    
    static let activities = [
        Activity(name: "walking", calories: 500)
    ]
    
    static let days = [
        Day(name: "Sunday", foods: sundayFood, activities: activities),
        Day(name: "Monday", foods: mondayFood, activities: activities),
        Day(name: "Tuesday", foods: tuesdayFood, activities: activities)
    ]
    
    static let foodCatalog = [
        Food(name: "cottage cheese", calories: 110, protein: 13),
        Food(name: "chicken", calories: 540, protein: 60),
        Food(name: "baked beans", calories: 300, protein: 13)
    ]
    
    static let singleFood: Food = Food(name: "testfood", calories: 1000, protein: 100)
    
    static let singleDay: Day = Day(name: "testday", foods: mondayFood, activities: activities)
    
    static let singleActivity: Activity = Activity(name: "walk", calories: 500)
    
    static let model: Model = Model(days: days, foodCatalog: foodCatalog)
}
