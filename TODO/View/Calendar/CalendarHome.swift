// 
//  CalendarHome.swift
//  TODO
//
//  Created by 서종현 on 2022/12/22.
//

import SwiftUI

struct CalendarHome: View {
    var body: some View {
        VStack {
            HStack {
                Text("Name").font(.title)
                
                Spacer()
                
                Image(systemName: "person").font(.title)
            }
            .padding()
            
            Calendar()
                .padding([.horizontal])
            
            Spacer()
        }
    }
}

struct CalendarHome_Previews: PreviewProvider {
    static var previews: some View {
        CalendarHome()
    }
}
