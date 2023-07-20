//
//  ListFoods.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/20/23.
//

import SwiftUI

struct ListFood: View {
    let foodCatalog: Array<Food>
    
    
    
    var body: some View {
        NavigationStack {
            List(foodCatalog) { food in
                FoodRow(food: food)
            }
            NavigationLink("Add Food") {
                AddFood()
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
    static var previews: some View {
        ListFood(foodCatalog: foodCatalog)
    }
}
