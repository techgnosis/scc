//
//  ListFoods.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/20/23.
//

import SwiftUI

struct ListFoods: View {
    let foods = [
        Food(name: "cottage cheese", calories: 110, protein: 13),
        Food(name: "chicken", calories: 540, protein: 60),
        Food(name: "baked beans", calories: 300, protein: 13)
    ]
    
    
    var body: some View {
        NavigationView {
            List(foods) { food in
                FoodRow(food: food)
            }
        }
    }
}

struct ListFoods_Previews: PreviewProvider {
    static var previews: some View {
        ListFoods()
    }
}
