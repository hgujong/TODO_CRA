//
//  StopManager.swift
//  TODO
//
//  Created by junhyeok KANG on 2022/12/23.
//

import Foundation
import SwiftUI
import UIKit

class StopManager: ObservableObject {
    
    enum stopWatchMode {
        case runnig
        case stoped
        case paused
    }
    @Published var mode: stopWatchMode = .stoped
    
    @Published var hours = 0
    @Published var minutes = 0
    @Published var seconds  = 0
    var timer = Timer()
    
    
    
    func start() {
        mode = .runnig
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true){ timer in
            seconds += 1
            if seconds == 60 {
                minutes += 1
                seconds = 0
            }
            
            if minutes == 60 {
                hours += 1
                minutes = 0
            }
        }
            
        
    }
    func pause(){
        
        timer.invalidate()
        mode = .paused
    }
    
    func stop() {
        timer.invalidate()
        hours = 0
        minutes = 0
        seconds = 0
        mode = .stoped
    }
}
