//
//  SettingView.swift
//  TODO
//
//  Created by junhyeok KANG on 2022/12/26.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        VStack(alignment: .leading){
                       Text("Setting")
                           .font(.title)
                           .fontWeight(.bold)
                           .multilineTextAlignment(.leading)
                           .padding(5)
               }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
