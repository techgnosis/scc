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
    @Environment(\.presentationMode) var presentationMode

    
    var body: some View {
        HStack {
            Text("\(food.name), \(String(food.calories)), \(String(food.protein))")
            Button("Add") {
                self.day.addFood(food: food)
                print("trying to add \(food.name)")
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct SelectFoodRow_Previews: PreviewProvider {
    static var previews: some View {
        SelectFoodRow(day: PreviewData.singleDay, food: PreviewData.singleFood)
    }
}
