//
//  ContentView.swift
//  ObservableObject
//
//  Created by Quin’darius Lyles-Woods on 5/11/20.
//  Copyright © 2020 Quin'darius. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var stopwatch = StopWatch()
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    self.stopwatch.start()
                }){
                    Text("Start")
                }
                Button(action:{
                    self.stopwatch.stop()
                }){
                    Text("Stop")
                }
                Button(action: {
                    self.stopwatch.reset()
                }){
                    Text("Reset")
                }
            }
            Text("\(self.stopwatch.counter)").font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
