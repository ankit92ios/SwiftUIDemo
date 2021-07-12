//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by ankit ios on 11/07/21.
//

import SwiftUI


struct ContentView: View {
    @State var hourSelection = 0
    @State var minuteSelection = 0
    @State var secondSelection = 0
    var hours = [Int](0..<24)
    var miutes = [Int](0..<60)
    var seconds = [Int](0..<60)
    
    
    var body: some View {
        GeometryReader{ geometry in
            HStack{
                Picker(selection: self.$hourSelection, label:Text("Hours") ){
                    ForEach(0..<self.hours.count){
                        index in
                        Text("\(self.hours[index]) h").tag(index)
                    }
                }.frame(width: geometry.size.width/3, height: 100, alignment: .center)
                
                Picker(selection: self.$minuteSelection, label:Text("Seconds") ){
                    ForEach(0..<self.miutes.count){
                        index in
                        Text("\(self.miutes[index]) m").tag(index)
                    }
                }.frame(width: geometry.size.width/3, height: 100, alignment: .center)
                
                Picker(selection: self.$secondSelection, label:Text("Hours") ){
                    ForEach(0..<self.seconds.count){
                        index in
                        Text("\(self.seconds[index]) s").tag(index)
                    }
                }.frame(width: geometry.size.width/3, height: 100, alignment: .center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
