// Add Food is for adding a food to the catalog
// Name, Calories Per Serving, Protein Per Serving


import SwiftUI

struct AddFood: View {
    
    @State private var newName: String = ""
    @State private var newCalories: String = ""
    @State private var newProtein: String = ""
    @EnvironmentObject var model: Model
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
                model.foodCatalog.insert(Food(
                    name: newName,
                    calories: Int(newCalories) ?? 0,
                    protein: Int(newProtein) ?? 0
                    ))
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct AddFood_Previews: PreviewProvider {
    
    static var previews: some View {
        AddFood().environmentObject(PreviewData.model)
    }
}
