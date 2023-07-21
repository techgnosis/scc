// ViewDay shows you all the items you selected that day
// Shows you total calories and total protein

import SwiftUI

struct DayDetail: View {
    @EnvironmentObject var day: Day
    
    var body: some View {
        NavigationStack {
            List(day.foods) { food in
                FoodRow(food: food)
            }
            NavigationLink("Select Food") {
                SelectFood(day: day)
            }
            Spacer()
            Spacer()
            Button("Delete last food") {
                day.removeFood()
            }
            List(day.activities) { activity in
                ActivityRow(activity: activity)
            }
            NavigationLink("Add Activity") {
                AddActivity(day: day)
            }
        }
    }
}

struct DayDetail_Previews: PreviewProvider {
    
    static var previews: some View {
        DayDetail().environmentObject(PreviewData.singleDay)
    }
}
