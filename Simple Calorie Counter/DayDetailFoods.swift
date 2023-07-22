//
//  DayDetailFoods.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/22/23.
//

import SwiftUI

struct DayDetailFoods: View {
    
    @EnvironmentObject var day: Day
    
    var body: some View {
        NavigationStack {
            Text("Foods")
            List(day.foods) { food in
                DayDetailsFoodRow(food: food)
            }
            NavigationLink("Select Food") {
                SelectFood(day: day)
            }.buttonStyle(.borderedProminent)
            Spacer()
            Spacer()
            Button("Delete last food") {
                day.removeFood()
            }.buttonStyle(.borderedProminent)
        }
    }
}

struct DayDetailFoods_Previews: PreviewProvider {
    static var previews: some View {
        DayDetailFoods().environmentObject(PreviewData.singleDay)
    }
}
