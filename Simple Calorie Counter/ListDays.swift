// Show the last 7 days only
// Shows Date, Calories, Protein
// Touching a day will take you to ViewDay
// Has an "Add Food" button that takes you to AddFood

import SwiftUI



struct ListDays: View {
    @EnvironmentObject var model: Model
    
    @State var currentDay: String
    @State var noDaySet: Bool = false
    
    init() {
        self.currentDay = ""
        self.noDaySet = false
    }
    
    var body: some View {
        NavigationStack {
            List(model.days) { day in
                NavigationLink {
                    DayDetail(day: day)
                } label: {
                    DayRow(day: day)
                }
            }.listStyle(.plain)
            
            Button("Add Day") {
                currentDay = model.currentDay
                if (currentDay == "") {
                    noDaySet = true
                } else {
                    model.addDay(currentDay: currentDay)
                }
            }.alert("What day of the week is it? You only have to answer this once", isPresented: $noDaySet) {
                TextField("", text: $currentDay)
                Button("OK") {
                    model.addDay(currentDay: currentDay)
                }
            }
            Spacer()
            Spacer()
            
            Button("Remove last day") {
                model.days.removeLast()
            }
            
        }
    }
}

struct ListDays_Previews: PreviewProvider {

    static var previews: some View {
        ListDays().environmentObject(PreviewData.model)
    }
}
