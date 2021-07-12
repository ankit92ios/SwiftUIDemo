//
//  TabViewExample.swift
//  FirstSwiftUI
//
//  Created by ankit ios on 11/07/21.
//

import SwiftUI

struct TabViewExample: View {
    var body: some View {
        TabView{
            BlueView().tabItem {
                Image(systemName: "message.fill")
                Text("blue")
            }
             YellowView().tabItem {
                Image(systemName: "message.fill")
                Text("yellow")
            }
            RedView().tabItem {
                Image(systemName: "message.fill")
                Text("Red")
            }
        }
    }
}

struct TabViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TabViewExample()
    }
}

struct BlueView : View{
    var body: some View{
        Color.blue
    }
}


struct YellowView : View{
    var body: some View{
        Color.yellow
    }
}

struct RedView : View{
    var body: some View{
        Color.red
    }
}
