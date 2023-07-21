//
//  Model.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/20/23.
//

import Foundation

class Model: ObservableObject {
    @Published var days: Array<Day>
    @Published var foodCatalog: Array<Food>
    var dayIndex: Int = 0
    let dayNames: Array<String> = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday","Friday", "Saturday", "Sunday"]
    
    init(days: Array<Day>, foodCatalog: Array<Food>) {
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
    
    func removeDay() {
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
