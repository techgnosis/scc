//
//  Model.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/20/23.
//

import Foundation

class Model: ObservableObject {
    @Published var days: Array<Day>
    @Published var foodCatalog: Set<Food>
    @Published var rmr: Int = 2000
    private var dayIndex: Int = 0
    private let dayNames: Array<String> = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday","Friday", "Saturday", "Sunday"]
    
    init(days: Array<Day>, foodCatalog: Set<Food>) {
        self.days = days
        self.foodCatalog = foodCatalog
        self.dayIndex = Date().dayNumberOfWeek()! - 1
    }
    
    func addDay() {
        days.append(Day(name: String(dayNames[dayIndex])))
        dayIndex = dayIndex + 1
        if (dayIndex == 7) {
            dayIndex = 0
        }
    }
    
    func setRMR(rmr: Int) {
        self.rmr = rmr
    }
    
    func removeFood(food: Food) {
        foodCatalog.remove(food)
    }
    
    func removeDay() {
        if (days.isEmpty) {
            return
        }
        
        days.removeLast()
        if (self.dayIndex > 0) {
            self.dayIndex = self.dayIndex - 1
        } else {
            self.dayIndex = 6
        }
        
        if (self.days.isEmpty) {
            self.dayIndex = Date().dayNumberOfWeek()! - 1
        }
        
    }
}
