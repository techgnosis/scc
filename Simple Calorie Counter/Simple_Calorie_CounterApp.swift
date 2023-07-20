//
//  Simple_Calorie_CounterApp.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/18/23.
//

import SwiftUI

@main
struct Simple_Calorie_CounterApp: App {
    
    let days: Array<Day> = Array()
    let foodCatalog: Array<Food> = Array()
    
    var body: some Scene {
        WindowGroup {
            MainView(days: days, foodCatalog: foodCatalog)
        }
    }
}
