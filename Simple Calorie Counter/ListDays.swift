// Shows Day, Calories, Protein, Deficit
// Touching a day will take you to DayDetail

import SwiftUI



struct ListDays: View {
    @EnvironmentObject var model: Model
    
    var body: some View {
        
        NavigationStack {
            List(model.days) { day in
                NavigationLink {
                    DayDetail().environmentObject(day)
                } label: {
                    DayRow(rmr: model.rmr).environmentObject(day)
                }
            }.listStyle(.plain)
            
            
            Button("Add Day") {
                model.addDay()
            }.buttonStyle(.borderedProminent)
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Button("Remove last day") {
                model.removeDay()
            }.buttonStyle(.borderedProminent)
            Spacer()
            Spacer()
            Spacer()
        }
        
        
    }
}

struct ListDays_Previews: PreviewProvider {

    static var previews: some View {
        ListDays().environmentObject(PreviewData.model)
    }
}
