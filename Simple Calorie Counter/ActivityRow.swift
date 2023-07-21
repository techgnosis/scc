//
//  ActivityRow.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/20/23.
//

import SwiftUI

struct ActivityRow: View {
    
    var activity: Activity
    
    var body: some View {
        Text("\(activity.name), \(activity.calories)")
    }
}

struct ActivityRow_Previews: PreviewProvider {
    static var previews: some View {
        ActivityRow(activity: PreviewData.singleActivity)
    }
}
