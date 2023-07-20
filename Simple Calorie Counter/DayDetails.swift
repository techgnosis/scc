// ViewDay shows you all the items you selected that day
// Shows you total calories and total protein

import SwiftUI

struct DayDetail: View {
    var day: Day
    
    var body: some View {
        Text("day detail")
    }
}

struct DayDetail_Previews: PreviewProvider {
    static var previews: some View {
        DayDetail(day: Day(name: "Monday"))
    }
}
