// SelectFood is for selecting which food you ate from the catalog
// Choose how many servings with +/- buttons


import SwiftUI

struct SelectFood: View {
    
    @EnvironmentObject var model: Model
    
    var body: some View {
        List(model.foodCatalog) { food in
            SelectFoodRow(food: food)
        }
    }
}

struct SelectFood_Previews: PreviewProvider {
    
    static var foodCatalog: Array<Food> = [
        Food(name: "corn", calories: 100, protein: 2),
        Food(name: "apple", calories: 150, protein: 1)
    ]
    
    static var model: Model = Model(days: Array(), foodCatalog: foodCatalog)
    
    
    static var previews: some View {
        SelectFood().environmentObject(model)
    }
}
