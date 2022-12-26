//
//  Profile.swift
//  TODO
//
//  Created by 서종현 on 2022/12/26.
//

import Foundation

struct Profile {
    var username: String
    var userid: String
    var prefersNotifications = true
    
    static let `default` = Profile(username: "JongHyun", userid: "jhseo0704")
}
