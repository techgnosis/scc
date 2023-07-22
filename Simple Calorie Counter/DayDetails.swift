// ViewDay shows you all the items you selected that day
// Shows you total calories and total protein

import SwiftUI

struct DayDetail: View {
    @EnvironmentObject var day: Day
    
    var body: some View {
        TabView {
            DayDetailFoods().tabItem {
                Label("Food", systemImage: "square.and.pencil")
            }.environmentObject(day)
            DayDetailsActivities().tabItem {
                Label("Activity", systemImage: "square.and.pencil")
            }.environmentObject(day)
        }
    }
}

struct DayDetail_Previews: PreviewProvider {
    
    static var previews: some View {
        DayDetail().environmentObject(PreviewData.singleDay)
    }
}
