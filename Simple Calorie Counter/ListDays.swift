// Show the last 7 days only
// Shows Date, Calories, Protein
// Touching a day will take you to ViewDay
// Has an "Add Food" button that takes you to AddFood

import SwiftUI



struct ListDays: View {
    @EnvironmentObject var model: Model
    
    var body: some View {
        NavigationStack {
            List(model.days) { day in
                NavigationLink {
                    DayDetail().environmentObject(day)
                } label: {
                    DayRow().environmentObject(day)
                }
            }.listStyle(.plain)
            
            Button("Add Day") {
                model.addDay()
            }
            Spacer()
            Spacer()
            
            Button("Remove last day") {
                model.removeDay()
            }
            
        }
    }
}

struct ListDays_Previews: PreviewProvider {

    static var previews: some View {
        ListDays().environmentObject(PreviewData.model)
    }
}
