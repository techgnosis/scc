//
//  ListFoods.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/20/23.
//

import SwiftUI

struct ListFood: View {
    
    @EnvironmentObject var model: Model
    
    enum SortOption {
            case name, calories, protein
    }
    
    @State var sortOption: SortOption = .name
    
    var sortedFood: [Food] {
        switch sortOption {
            case .name:
            return model.foodCatalog.sorted { $0.name.lowercased() < $1.name.lowercased() }
            case .calories:
                return model.foodCatalog.sorted { $0.calories < $1.calories }
            case .protein:
                return model.foodCatalog.sorted { $0.protein < $1.protein }
        }
    }
    
    var body: some View {
        NavigationStack {
            
            Picker("Sort By", selection: $sortOption) {
                Text("Name").tag(SortOption.name)
                Text("Calories").tag(SortOption.calories)
                Text("Protein").tag(SortOption.protein)
            }.pickerStyle(SegmentedPickerStyle())
            
            List(sortedFood) { food in
                FoodRow(food: food)
            }
            
            NavigationLink("Add Food") {
                AddFood().environmentObject(model)
            }
        }
        
    }
}

struct ListFoods_Previews: PreviewProvider {
    static let foodCatalog = [
        Food(name: "cottage cheese", calories: 110, protein: 13),
        Food(name: "chicken", calories: 540, protein: 60),
        Food(name: "baked beans", calories: 300, protein: 13)
    ]
    
    static let model: Model = Model(days: Array(), foodCatalog: foodCatalog)
    static var previews: some View {
        ListFood().environmentObject(model)
    }
}
