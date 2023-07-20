//
//  MainView.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/20/23.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var model: Model

    var body: some View {
        TabView {
            ListDays()
                .tabItem{
                    Label("Days", systemImage: "square.and.pencil")
                }.environmentObject(model)
            ListFood()
                .tabItem {
                    Label("Foods", systemImage: "square.and.pencil")
                }.environmentObject(model)
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
    
    static let model: Model = Model(days: days, foodCatalog: foodCatalog)
    
    static var previews: some View {
        MainView().environmentObject(model)
    }
}
