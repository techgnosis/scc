// Day Row is the Day in the list of Days


import SwiftUI

struct DayRow: View {
    @EnvironmentObject var day: Day
    
    var body: some View {
        Text("\(day.name), \(String(day.calories)) kcal, \(String(day.protein)) g protein")
    }
}

struct DayRow_Previews: PreviewProvider {
    static var previews: some View {
        DayRow().environmentObject(PreviewData.singleDay)
    }
}
