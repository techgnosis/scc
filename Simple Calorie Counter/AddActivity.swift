//
//  AddActivity.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/20/23.
//

import SwiftUI

struct AddActivity: View {
    @State private var newName: String = ""
    @State private var newCalories: String = ""
    var day: Day
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Name")
            TextField("Name", text: $newName).textFieldStyle(.roundedBorder)
            Text("Calories")
            TextField("Calories", text: $newCalories).textFieldStyle(.roundedBorder)
            Button("Save") {
                day.addActivity(food: Food(name: newName, calories: Int64(newCalories) ?? 0, protein: 0))
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct AddActivity_Previews: PreviewProvider {
    static var previews: some View {
        AddActivity(day: PreviewData.singleDay)
    }
}
