//
//  AdHocFood.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/26/23.
//

import SwiftUI

struct AdHocFood: View {
    
    @State private var newName: String = ""
    @State private var newCalories: String = ""
    @State private var newProtein: String = ""
    @EnvironmentObject var day: Day
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Name")
            TextField("Name", text: $newName).textFieldStyle(.roundedBorder)
            Text("Calories")
            TextField("Calories", text: $newCalories).textFieldStyle(.roundedBorder)
            Text("Protein")
            TextField("Protein", text: $newProtein).textFieldStyle(.roundedBorder)
            Button("Save") {
                day.addFood(food: Food(
                    name: newName,
                    calories: Int64(newCalories) ?? 0,
                    protein: Int64(newProtein) ?? 0
                    ))
                presentationMode.wrappedValue.dismiss()
            }.buttonStyle(.borderedProminent)
        }
    }
}

struct AdHocFood_Previews: PreviewProvider {
    static var previews: some View {
        AdHocFood()
    }
}
