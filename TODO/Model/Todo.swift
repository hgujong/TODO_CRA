//
//  Todo.swift
//  TODO
//
//  Created by junhyeok KANG on 2022/12/26.
//

import Foundation
import SwiftUI

struct Todo: Identifiable, Codable{
    var id = UUID()
    let todoItem: String
    let important: Bool
    var done: Bool = false
}
