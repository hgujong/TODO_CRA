//
//  SwiftUIView.swift
//  TODO
//
//  Created by junhyeok KANG on 2022/12/23.
//

import SwiftUI

struct Stopwatch: View {
    
    @ObservedObject var stopManager = StopManager()
    
    var body: some View {
        VStack{
            Text(String(format: "%.1f",stopManager.seconds))
                .font(.system(size: 60))
            
            
            if stopManager.mode == .stoped {
                HStack{
                    Button(action: {self.stopManager.start()}){
                        TimerButton(label: "Start", buttonColor:.black,textColor: .white)
                        
                    }
                    
                    Button(action: {self.stopManager.stop()}){
                        TimerButton(label: "Stop", buttonColor:.black,textColor: .white)
                        
                    }
                }
            }
            
            if stopManager.mode == .runnig {
                HStack{
                    Button(action: {self.stopManager.pause()}){
                        TimerButton(label: "Pause", buttonColor:.black,textColor: .white)
                        
                    }
                    
                    Button(action: {self.stopManager.stop()}){
                        TimerButton(label: "Stop", buttonColor:.black,textColor: .white)
                        
                    }
                }
            }
            
            if stopManager.mode == .paused {
                HStack{
                    Button(action: {self.stopManager.start()}){
                        TimerButton(label: "Start", buttonColor:.black,textColor: .white)
                        
                    }
                    Button(action: {self.stopManager.stop()}){
                        TimerButton(label: "Stop", buttonColor:.black,textColor: .white)
                        
                    }
                }
            }
        }
    }
}

struct Stopwatch_Previews: PreviewProvider {
    static var previews: some View {
        Stopwatch()
    }
}

struct TimerButton: View {
    
    let label: String
    let buttonColor: Color
    let textColor: Color
    var body: some View {
        Text(label)
            .foregroundColor(textColor)
            .font(.system(size: 30))
            .padding(.vertical,10)
            .padding(.horizontal,30)
            .background(buttonColor)
            .cornerRadius(20)
    }
}
