//
//  DayDetailsActivities.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/22/23.
//

import SwiftUI

struct DayDetailsActivities: View {
    
    @EnvironmentObject var day: Day
    
    var body: some View {
        NavigationStack {
            Text("Activity")
            List(day.activities) { activity in
                ActivityRow(activity: activity)
            }
            NavigationLink("Add Activity") {
                AddActivity(day: day)
            }.buttonStyle(.borderedProminent)
            Spacer()
            Spacer()
            Button("Delete last Activity") {
                day.removeActivity()
            }.buttonStyle(.borderedProminent)
        }
    }
}

struct DayDetailsActivities_Previews: PreviewProvider {
    static var previews: some View {
        DayDetailsActivities().environmentObject(PreviewData.singleDay)
    }
}
