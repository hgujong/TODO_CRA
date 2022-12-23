//
//  edit.swift
//  Todoy
//
//  Created by 이채연 on 2022/12/23.
//


import SwiftUI

struct edit: View {
    var image: Image
    @State private var name = ""
    @State private var id = ""
    
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
                        Text("done")
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
                    TextField("name", text : $name)
                        

                    TextField("id",text : $id)
                }
                .padding([.horizontal])
            }
            .padding([.top])
            
            Spacer()
        }
    }
}
#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

struct edit_Previews: PreviewProvider {
    static var previews: some View {
        edit(image: Image("profile"))
    }
}

