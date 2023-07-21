//
//  SelectFoodRow.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/20/23.
//

import SwiftUI

struct SelectFoodRow: View {
    
    var food: Food
    
    var body: some View {
        Text("\(food.name), \(String(food.calories)), \(String(food.protein))")
    }
}

struct SelectFoodRow_Previews: PreviewProvider {
    static var previews: some View {
        SelectFoodRow(food: Food(name: "apple", calories: 100, protein: 1))
    }
}
