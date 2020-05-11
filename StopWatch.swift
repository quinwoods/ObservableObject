//
//  StopWatch.swift
//  ObservableObject
//
//  Created by Quin’darius Lyles-Woods on 5/11/20.
//  Copyright © 2020 Quin'darius. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class StopWatch: ObservableObject{
    @Published var counter: Int = 0
    
    var timer = Timer()
    
    func start(){
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true){timer in
            self.counter += 1
        }
    }
    func stop(){
        timer.invalidate()
    }
    
    func reset(){
        counter = 0
        timer.invalidate()
    }
}
