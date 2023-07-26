//
//  Model.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/20/23.
//

// Have a class that handles all sqlite code
// Instantiate an object of it
// Pass it to Model in the init
// On Model init, load all the Foods and Days from the DB
// When AddFood, DeleteFood, AddActivity, DeleteActivity, AddDay, or DeleteDay are called, check if the DB object exists
// and use it, otherwise just do nothing and let everything sit in RAM

import Foundation

class Model: ObservableObject {
    @Published var days: Array<Day>
    @Published var foodCatalog: Set<Food>
    @Published var rmr: Int64 = 2000
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
    
    func setRMR(rmr: Int64) {
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
