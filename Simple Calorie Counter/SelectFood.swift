// SelectFood is for selecting which food you ate from the catalog
// Choose how many servings with +/- buttons


import SwiftUI

struct SelectFood: View {
    
    @EnvironmentObject var model: Model
    var day: Day
    
    var body: some View {
        List(Array(model.foodCatalog)) { food in
            SelectFoodRow(day: day, food: food)
        }
    }
}

struct SelectFood_Previews: PreviewProvider {
    
    static var previews: some View {
        SelectFood(day: PreviewData.singleDay).environmentObject(PreviewData.model)
    }
}
