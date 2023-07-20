//
//  FoodRow.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/20/23.
//

import SwiftUI

struct FoodRow: View {
    var food: Food
    var body: some View {
        Text("\(food.name), \(String(food.calories)), \(String(food.protein))")
    }
}

struct FoodRow_Previews: PreviewProvider {
    static var previews: some View {
        FoodRow(food: Food(name: "test food", calories: 200, protein: 20))
    }
}
