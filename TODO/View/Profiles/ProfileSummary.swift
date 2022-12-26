//
//  ProfileSummary.swift
//  TODO
//
//  Created by 서종현 on 2022/12/26.
//

import SwiftUI

struct ProfileSummary: View {
    var image: Image
    var profile: Profile
    
    var body: some View {
        VStack {
            image
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .padding(.bottom)
            
            Divider()
            
            HStack {
                VStack(alignment: .leading) {
                    Text("User Name: ")
                        .bold()
                    
                    Text("User ID: ")
                        .bold()
                }
                .padding([.horizontal])
                
                VStack(alignment: .leading) {
                    Text(profile.username)
                        .bold()
                    
                    Text(profile.userid)
                        .bold()
                }
                .padding([.horizontal])
            }
            Spacer()
        }
        .padding()
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(image: Image("ProfilePic"), profile: Profile.default)
    }
}
