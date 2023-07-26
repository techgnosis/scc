//
//  DBManager.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/24/23.
//

import Foundation
import SQLite

class DBManager {
    
    private let foods = Table("foods")
    private let foodId = Expression<UUID>("id")
    private let foodName = Expression<String?>("name")
    private let foodCalories = Expression<Int64>("calories")
    private let foodProtein = Expression<Int64>("protein")
    private let foodDeleted = Expression<Bool>("deleted")
                
    private let days = Table("days")
    private let dayId = Expression<UUID>("id")
    private let dayName = Expression<String?>("name")
    private let dayCalories = Expression<Int64>("calories")
    
    private let dayfood = Table("dayfood")
    private let dayfoodId = Expression<UUID>("id")
    private let dayfoodDayId = Expression<UUID>("dayId")
    private let dayfoodFoodId = Expression<UUID>("foodId")
    
    // an Activity is just a Food with negative calories and no nutrition stats
    
    
    init() {
        
    }
    
    func initTables() {
        
        do {
            
            let db = try Connection("db.sqlite3")
            
            try db.run(foods.create { t in
                t.column(foodId, primaryKey: true)
                t.column(foodName)
                t.column(foodCalories)
                t.column(foodProtein)
            })
            
            try db.run(days.create { t in
                t.column(dayId, primaryKey: true)
                t.column(dayName)
                t.column(dayCalories)
            })
            
            try db.run(dayfood.create { t in
                t.column(dayfoodId, primaryKey: true)
                t.column(dayfoodDayId)
                t.column(dayfoodFoodId)
            })
            
        } catch {
            print(error)
        }
        
    }
    
    func addDay(day: Day) {
        do {
            let db = try Connection("db.sqlite3")
            let insert = days.insert(dayName <- day.name)
            try db.run(insert)
        } catch {
            print(error)
        }
    }
    
    func deleteDay(day: Day) {
        
    }
    
    func addFood(food: Food) {
        do {
            let db = try Connection("db.sqlite3")
            let insert = foods.insert(
                foodName <- food.name,
                foodCalories <- food.calories,
                foodProtein <- food.protein
            )
            try db.run(insert)
        } catch {
            print(error)
        }
    }
    
    func deleteFood(food: Food) {
        
    }
    
    
    func addDayFood(food: Food, day: Day) {
        do {
            let db = try Connection("db.sqlite3")
            try db.run(dayfood.insert(dayfoodFoodId <- food.id, dayfoodDayId <- day.id))

        } catch {
            print(error)
        }
        
    }
}
