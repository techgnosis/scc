//
//  DayDetailsFoodRow.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/22/23.
//

import SwiftUI

struct DayDetailsFoodRow: View {
    var food: Food
    
    var body: some View {
        HStack {
            Text("\(food.name), \(String(food.calories)), \(String(food.protein))")
        }
    }
}

struct DayDetailsFoodRow_Previews: PreviewProvider {
    static var previews: some View {
        DayDetailsFoodRow(food: PreviewData.singleFood)
    }
}
