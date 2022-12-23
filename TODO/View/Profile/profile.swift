//
//  profile.swift
//  Todoy
//
//  Created by 이채연 on 2022/12/23.
//

import SwiftUI

struct profile: View {
    var image: Image
    
    var body: some View {
        VStack {
            HStack{
                Text("Profile")
                    .font(.system(size: 34))
                    .fontWeight(.regular)
                
                Spacer()
                
                Button(action: {
                }) {
                    HStack {
                        Text("edit")
                            .font(.system(size: 22))
                            .fontWeight(.regular)
                            .foregroundColor(Color.blue)
                    }
                }

            }
            .padding()
            
            image
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white,lineWidth: 4)
                }
                .shadow(radius: 7)
                .padding([.vertical])

            HStack {
                VStack(alignment: .leading) {
                    Text("Name")
                        .font(.system(size: 22))
                    Text("ID")
                        .font(.system(size: 22))
                }
                .padding([.horizontal])
                
                VStack {
                    Text("ChaeYeon")
                        .font(.system(size: 22))
                        

                    Text("yeon6243")
                        .font(.system(size: 22))
                }
                .padding([.horizontal])
            }
            .padding([.top])
            
            Spacer()
        }
    }
}

struct profile_Previews: PreviewProvider {
    static var previews: some View {
        profile(image: Image("profile"))
    }
}
