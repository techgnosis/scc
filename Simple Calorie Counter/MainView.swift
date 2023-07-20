//
//  MainView.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/20/23.
//

import SwiftUI

struct MainView: View {
    let days: Array<Day>
    let foodCatalog: Array<Food>
    var body: some View {
        TabView {
            ListDays(days: days)
                .tabItem{
                    Label("Days", systemImage: "square.and.pencil")
                }
            ListFood(foodCatalog: foodCatalog)
                .tabItem {
                    Label("Foods", systemImage: "square.and.pencil")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static let days = [
        Day(name: "Sunday"),
        Day(name: "Monday"),
        Day(name: "Tuesday")
    ]
    
    static let foodCatalog = [
        Food(name: "cottage cheese", calories: 110, protein: 13),
        Food(name: "chicken", calories: 540, protein: 60),
        Food(name: "baked beans", calories: 300, protein: 13)
    ]
    
    static var previews: some View {
        MainView(days: days, foodCatalog: foodCatalog)
    }
}
