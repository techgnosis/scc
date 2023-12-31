// FoodRow is for the food catalog
// It can be deleted so it has its own delete button

import SwiftUI

struct FoodRow: View {
    var food: Food
    @EnvironmentObject var model: Model
    
    var body: some View {
        HStack {
            Text("\(food.name), \(String(food.calories)), \(String(food.protein))")
            Spacer()
            Button("Remove") {
                self.model.removeFood(food: food)
            }.buttonStyle(.borderedProminent)
        }
    }
}

struct FoodRow_Previews: PreviewProvider {
    static var previews: some View {
        FoodRow(food: PreviewData.singleFood)
    }
}
