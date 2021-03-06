//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by ankit ios on 22/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(
                    destination: TimerExampleView()){
                    Text("1. Timer Example")
                }
                Divider()
                NavigationLink(
                    destination: DiffExampleView() ){
                    Text("2. Difference Between @ObservedObject  and @StateObject")
                }
                Divider()
                NavigationLink(
                    destination:  PickerViewExample()){
                    Text("Picker View Example")
                }
                Divider()
                NavigationLink(
                    destination:   PlayerList(players: testData)){
                    Text("Player List")
                }

                
                VStack{
                    Divider()
                    NavigationLink(
                        destination:  NormalTextField()){
                        Text("Login Screen Example")
                    }
                    Divider()
                    NavigationLink(
                        destination:  TabViewExample()){
                        Text("Tab View Example")
                    }
                    Divider()
                    NavigationLink(
                        destination:  PreferenceExampleView()){
                        Text("Preference Exmaple")
                    }
                }
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
