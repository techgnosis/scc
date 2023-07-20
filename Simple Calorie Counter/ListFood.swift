//
//  ListFoods.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/20/23.
//

import SwiftUI

struct ListFood: View {
    @EnvironmentObject var model: Model
    
    var body: some View {
        NavigationStack {
            List(model.foodCatalog) { food in
                FoodRow(food: food)
            }
            NavigationLink("Add Food") {
                AddFood().environmentObject(model)
            }
        }
        
    }
}

struct ListFoods_Previews: PreviewProvider {
    static let foodCatalog = [
        Food(name: "cottage cheese", calories: 110, protein: 13),
        Food(name: "chicken", calories: 540, protein: 60),
        Food(name: "baked beans", calories: 300, protein: 13)
    ]
    
    static let model: Model = Model(days: Array(), foodCatalog: foodCatalog)
    static var previews: some View {
        ListFood().environmentObject(model)
    }
}
