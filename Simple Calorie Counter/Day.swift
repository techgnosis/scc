//
//  Day.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/18/23.
//

import Foundation

class Day: Identifiable, ObservableObject {
    
    let id = UUID()
    
    var name: String
            
    @Published var foods: Array<Food> = Array()
    
    @Published var activities: Array<Activity> = Array()
    
    func addFood(food: Food) {
        self.foods.append(food)
    }
    
    func addActivity(activity: Activity) {
        self.activities.append(activity)
    }
    
    init(name: String) {
        self.name = name
    }
    
    init(name: String, foods: Array<Food>, activities: Array<Activity>) {
        self.name = name
        self.foods = foods
        self.activities = activities
    }

    
    var calories: Int {
        get {
            var caloriesTemp: Int = 0;
            for food in foods {
                caloriesTemp = caloriesTemp + food.calories
            }
            for activity in activities {
                caloriesTemp = caloriesTemp - activity.calories
            }
            return caloriesTemp
        }
    }
    
    var protein: Int {
        get {
            var proteinTemp: Int = 0
            for food in foods {
                proteinTemp = proteinTemp + food.protein
            }
            return proteinTemp
        }
    }
}
