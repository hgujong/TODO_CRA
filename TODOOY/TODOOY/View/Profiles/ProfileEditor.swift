//
//  ProfileEditor.swift
//  TODO
//
//  Created by 서종현 on 2022/12/26.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var body: some View {
        List {
            HStack {
                Text("Username").bold()
                Divider()
                TextField("Username", text: $profile.username)
            }
            
            HStack {
                Text("User id").bold().padding(.trailing, 25.0)
                Divider()
                TextField("Username", text: $profile.userid)
            }
            
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications").bold()
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
