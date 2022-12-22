//
//  Cal.swift
//  TODO
//
//  Created by 서종현 on 2022/12/22.
// 

import SwiftUI

struct Calendar: View {
    @State var date = Date()
    
    var body: some View {
        DatePicker(
            "DatePicker",
            selection: $date
        )
            .datePickerStyle(.graphical)
    }
}

struct Calendar_Previews: PreviewProvider {
    static var previews: some View {
        Calendar()
    }
}
