//
//  StopManager.swift
//  TODO
//
//  Created by junhyeok KANG on 2022/12/23.
//

import Foundation
import SwiftUI

class StopManager: ObservableObject {
    
    enum stopWatchMode {
        case runnig
        case stoped
        case paused
    }
    @Published var mode: stopWatchMode = .stoped
    
    
    @Published var seconds  = 0.0
    var timer = Timer()
    
    func start() {
        mode = .runnig
        //timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true){ timer in
            seconds += 0.1
        }
    func pause(){
        //timer.invalidate()
        mode = .paused
    }
    
    func stop() {
        //timer.invalidate()
        seconds = 0
        mode = .stoped
    }
}
