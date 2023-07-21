// Day Row is the Day in the list of Days


import SwiftUI

struct DayRow: View {
    @EnvironmentObject var day: Day
    var rmr: Int
    
    var body: some View {
        Text("\(day.name), \(String(day.calories)) cal, \(String(day.protein))g, \(rmr - day.calories) deficit")
    }
}

struct DayRow_Previews: PreviewProvider {
    static var previews: some View {
        DayRow(rmr: 2000).environmentObject(PreviewData.singleDay)
    }
}
