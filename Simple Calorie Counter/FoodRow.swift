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
        HStack(spacing: 50) {
            Text(food.name)
            Text(String(food.calories))
            Text(String(food.protein))
        }
    }
}

struct FoodRow_Previews: PreviewProvider {
    static var previews: some View {
        FoodRow(food: PreviewData.singleFood)
    }
}
