//
//  Timer.swift
//  SwiftUIDemo
//
//  Created by ankit ios on 22/08/21.
//

//An Example to show Timer in swift UI
import SwiftUI

struct TimerExampleView: View {
    var body: some View {
        HStack{
            Text("Timer: ")
            TimerView()
        }
    }
}

struct TimerView: View {
    @ObservedObject var date = CurrentTimeViewModel()
    var body: some View {
        Text("\(date.now)")
            .onAppear { self.date.start() }
            .onDisappear{ self.date.stop() }
    }
}

struct Timer_Previews: PreviewProvider {
    static var previews: some View {
        TimerExampleView()
    }
}
