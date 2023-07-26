// ViewDay shows you all the items you selected that day
// Shows you total calories and total protein

import SwiftUI

struct DayDetail: View {
    @EnvironmentObject var day: Day
    
    var body: some View {
        NavigationStack {
            Text("Foods and Activities")
            List(day.foods) { food in
                DayDetailsFoodRow(food: food).environmentObject(day)
            }
            NavigationLink("Select Food") {
                SelectFood(day: day)
            }.buttonStyle(.borderedProminent)
            Spacer()
            Spacer()
            NavigationLink("Ad-hoc Food") {
                AdHocFood().environmentObject(day)
            }.buttonStyle(.borderedProminent)
            Spacer()
            Spacer()
            NavigationLink("Add Activity") {
                AddActivity(day: day)
            }.buttonStyle(.borderedProminent)
            Spacer()
        }

    }
}

struct DayDetail_Previews: PreviewProvider {
    
    static var previews: some View {
        DayDetail().environmentObject(PreviewData.singleDay)
    }
}
