//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by ankit ios on 19/08/21.
//

import SwiftUI


//An Example to show difference between ObservedObject and StateObject

struct DiffExampleView: View {
    @State var counter = 0
    var body: some View {
        VStack{
            Text("counter \(self.counter)")
           
            Button("Tap on me"){
                self.counter += 1
            }
            InnerView()
            ResolveInnerView()
            
            //An other example : Timer Example
            TimerView()
            
        }
    }  
}

class Counter2 : ObservableObject {
    @Published var counter = 0
}

struct InnerView : View {
    @ObservedObject var counter2 = Counter2()
    var body: some View{
        VStack{
            Text("InnerView Counter \(self.counter2.counter)")
            Button("Tap on me"){
                self.counter2.counter += 1
            }
        }
    }
}

struct ResolveInnerView : View{
    @StateObject var counter2 = Counter2()
    var body: some View{
        VStack{
            Text("ResolveInnerView Counter \(self.counter2.counter)")
            Button("Tap on me"){
                self.counter2.counter += 1
            }
        }
    }
}

struct DiffExampleView_Previews: PreviewProvider {
    static var previews: some View {
        DiffExampleView()
    }
}


extension View {
    func debug() -> Self {
        print(Mirror(reflecting: self).subjectType)
        return self
    }
}
