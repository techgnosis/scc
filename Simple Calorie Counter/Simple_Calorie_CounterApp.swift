//
//  Simple_Calorie_CounterApp.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/18/23.
//

import SwiftUI

@main
struct Simple_Calorie_CounterApp: App {

    @StateObject var model: Model = Model(days: Array(), foodCatalog: Array())
    
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(model)
        }
    }
}
