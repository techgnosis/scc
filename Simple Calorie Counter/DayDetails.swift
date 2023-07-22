// ViewDay shows you all the items you selected that day
// Shows you total calories and total protein

import SwiftUI

struct DayDetail: View {
    @EnvironmentObject var day: Day
    
    var body: some View {
        TabView {
            DayDetailFoods().environmentObject(day)
            DayDetailsActivities().environmentObject(day)
        }.tabViewStyle(.page)
    }
}

struct DayDetail_Previews: PreviewProvider {
    
    static var previews: some View {
        DayDetail().environmentObject(PreviewData.singleDay)
    }
}
