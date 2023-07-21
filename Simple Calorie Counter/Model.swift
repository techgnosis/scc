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
    var currentDay: String = ""
    
    init(days: Array<Day>, foodCatalog: Array<Food>) {
        self.days = days
        self.foodCatalog = foodCatalog
    }
    
    func addDay(currentDay: String) {
        if (self.currentDay == "") {
            self.currentDay = currentDay
            dayIndex = dayNames.firstIndex(of: currentDay.localizedCapitalized) ?? 0
        }
        
        days.append(Day(name: String(dayNames[dayIndex])))
        dayIndex = dayIndex + 1
        if (dayIndex == 7) {
            dayIndex = 0
        }
    }
}
