//
//  SelectFoodRow.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/20/23.
//

import SwiftUI

struct SelectFoodRow: View {
    var day: Day
    var food: Food

    
    var body: some View {
        HStack {
            Text("\(food.name), \(String(food.calories)), \(String(food.protein))")
            Spacer()
            Button("Add") {
                self.day.addFood(food: food)
            }.buttonStyle(.borderedProminent)
        }
    }
}

struct SelectFoodRow_Previews: PreviewProvider {
    static var previews: some View {
        SelectFoodRow(day: PreviewData.singleDay, food: PreviewData.singleFood)
    }
}
