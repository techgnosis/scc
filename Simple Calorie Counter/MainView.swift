//
//  MainView.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/20/23.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var model: Model

    var body: some View {
        TabView {
            ListDays()
                .tabItem {
                    Label("Days", systemImage: "square.and.pencil")
                }.environmentObject(model)
            ListFood()
                .tabItem {
                    Label("Foods", systemImage: "square.and.pencil")
                }.environmentObject(model)
            SetRMR()
                .tabItem {
                    Label("RMR", systemImage: "square.and.pencil")
                }.environmentObject(model)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    
    static var previews: some View {
        MainView().environmentObject(PreviewData.model)
    }
}
