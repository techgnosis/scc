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
    var dayIndex: Int = 1
    
    init(days: Array<Day>, foodCatalog: Array<Food>) {
        self.days = days
        self.foodCatalog = foodCatalog
    }
    
    func addDay() {
        days.append(Day(name: "Day \(String(dayIndex))"))
        dayIndex = dayIndex + 1
    }
}
