//
//  ContentView.swift
//  Adjusters
//
//  Created by Venkat on 20/07/20.
//  Copyright © 2020 Venkat. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
         TabView {
                   HomeTableView()
                           .tabItem {
                           Image(systemName: "house.fill")
                           Text("Home")
                   }
                    CaseSearchView(navTitle: "Case Search")
                        .tabItem {
                           Image(systemName: "magnifyingglass")
                           Text("Case Search")
                      }
                    CaseSearchView(navTitle: "Schedules")
                     .tabItem {
                        Image(systemName: "calendar")
                        Text("Schedules")
                   }
                    CaseSearchView(navTitle: "Notifications")
                        .tabItem {
                            Image(systemName: "bell.fill")
                            Text("Notifications")
                    }
                    CaseSearchView(navTitle: "Analytics")
                        .tabItem {
                            Image(systemName: "chart.bar.fill")
                            Text("Analytics")
                    }
                   }
         .accentColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ReferralStatusDetails {
    var name: String!
    var imgName: String!
    var caseNumber: Int!
}
