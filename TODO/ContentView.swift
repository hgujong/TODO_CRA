//
//  ContentView.swift
//  TODO
//
//  Created by 서종현 on 2022/12/22.
//

import SwiftUI
 
struct ContentView: View {
    @State private var selection: Tab = .calendar
    
    enum Tab {
        case calendar
        case friend
    }
    var body: some View {
        TabView(selection: $selection) {
            CalendarHome()
                .tabItem {
                    Label("Calendar", systemImage: "calendar")
                }
                .tag(Tab.calendar)

            FriendHome()
                .tabItem {
                    Label("Friends", systemImage: "person")
                }
                .tag(Tab.friend)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
