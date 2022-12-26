//
//  Listview.swift
//  TODO
//
//  Created by junhyeok KANG on 2022/12/26.
//

import SwiftUI

struct Listview: View {
    var body: some View {
        TabView {
                    TodoView()
                        .tabItem {
                    Image(systemName: "checkmark.circle.fill")
                            Text("Todo")
                            }

                    SettingView()
                            .tabItem {
                            Image(systemName: "gear")
                            Text("Setting")
                            }
                    }
        }
}


struct Listview_Previews: PreviewProvider {
    static var previews: some View {
        Listview()
    }
}
