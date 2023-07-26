//
//  SetRMR.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/21/23.
//

import SwiftUI


struct SetRMR: View {
    
    @State private var rmr: String = ""
    @EnvironmentObject var model: Model
    
    var body: some View {
        VStack {
            Text("Set RMR")
            TextField("RMR", text: $rmr).textFieldStyle(.roundedBorder)
            Button("Save") {
                model.setRMR(rmr: Int64(rmr) ?? 2000)
            }.buttonStyle(.borderedProminent)
            Text("Current RMR is \(model.rmr)")
        }

    }
}

struct SetRMR_Previews: PreviewProvider {
    static var previews: some View {
        SetRMR().environmentObject(PreviewData.model)
    }
}
