// Different from FoodRow because FoodRow has a delete button since a Food
// can be deleted from the foodCatalog
// Dispays the Food differently depending on if its actually food or
// if its an activity

import SwiftUI

struct DayDetailsFoodRow: View {
    var food: Food
    
    var body: some View {
        HStack {
            food.isActivity ? Text("\(food.name), \(String(food.calories))") : Text("\(food.name), \(String(food.calories)), \(String(food.protein))")
        }
    }
}

struct DayDetailsFoodRow_Previews: PreviewProvider {
    static var previews: some View {
        DayDetailsFoodRow(food: PreviewData.singleFood)
    }
}
