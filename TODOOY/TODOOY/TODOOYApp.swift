//
//  TODOOYApp.swift
//  TODOOY
//
//  Created by 서종현 on 2022/12/27.
//

import SwiftUI
import Firebase

@main
struct TODOOYApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
