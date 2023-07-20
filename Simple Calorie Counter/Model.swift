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
    
    init(days: Array<Day>, foodCatalog: Array<Food>) {
        self.days = days
        self.foodCatalog = foodCatalog
    }
}
