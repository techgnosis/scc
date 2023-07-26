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
        
    func addFood(food: Food) {
        self.foods.append(food)
    }
    
    func addActivity(food: Food) {
        if (food.calories > 0) {
            food.calories = food.calories * -1
        }
        self.foods.append(food)
    }
    
    func removeFood() {
        if (foods.isEmpty) {
            return
        }
        
        foods.removeLast()
    }
    
    init(name: String) {
        self.name = name
    }
    
    init(name: String, foods: Array<Food>) {
        self.name = name
        self.foods = foods
    }

    
    var calories: Int64 {
        get {
            var caloriesTemp: Int64 = 0;
            for food in foods {
                caloriesTemp = caloriesTemp + food.calories
            }
            return caloriesTemp
        }
    }
    
    var protein: Int64 {
        get {
            var proteinTemp: Int64 = 0
            for food in foods {
                proteinTemp = proteinTemp + food.protein
            }
            return proteinTemp
        }
    }
}
