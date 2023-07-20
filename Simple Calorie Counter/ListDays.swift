// Show the last 7 days only
// Shows Date, Calories, Protein
// Touching a day will take you to ViewDay
// Has an "Add Food" button that takes you to AddFood

import SwiftUI



struct ListDays: View {
    @EnvironmentObject var model: Model
    
    
    
    var body: some View {
        NavigationView {
            List(model.days) { day in
                NavigationLink {
                    DayDetail(day: day)
                } label: {
                    DayRow(day: day)
                }
            }
        }
    }
}

struct ListDays_Previews: PreviewProvider {
    static let days = [
        Day(name: "Sunday"),
        Day(name: "Monday"),
        Day(name: "Tuesday")
    ]
    
    static let model: Model = Model(days: days, foodCatalog: Array())
    static var previews: some View {
        ListDays().environmentObject(model)
    }
}
