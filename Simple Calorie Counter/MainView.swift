//
//  MainView.swift
//  Simple Calorie Counter
//
//  Created by James Musselwhite on 7/20/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ListDays()
                .tabItem{
                    Label("Days", systemImage: "square.and.pencil")
                }
            ListFoods()
                .tabItem {
                    Label("Foods", systemImage: "square.and.pencil")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
