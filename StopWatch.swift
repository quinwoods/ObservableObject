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

class StopWatch: ObservedObject{
    @Published var counter: Int = 0
    
    var timer = Timer()
}
