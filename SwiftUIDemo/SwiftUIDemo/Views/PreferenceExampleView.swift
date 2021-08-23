//
//  PreferenceExampleView.swift
//  SwiftUIDemo
//
//  Created by PCX on 23/08/21.
//

import SwiftUI
//Ref: https://swiftwithmajid.com/2020/01/15/the-magic-of-view-preferences-in-swiftui/

struct PreferenceExampleView: View {
    var body: some View {
        MyTitleView.init(content: ChildView())
    }
}

fileprivate struct MyTitleKey: PreferenceKey{
    static var defaultValue: String? = nil
    static func reduce(value: inout String?, nextValue: () -> String?) {
        value = value ?? nextValue()
    }
}
extension View{
    func myTitle(_ title : String) -> some View{
        preference(key: MyTitleKey.self, value: title)
    }
}

struct MyTitleView<T> : View where T : View
{
    let  content : T?
    @State private var title : String = ""
    var body: some View{
        VStack{
            Text(title)
            content.onPreferenceChange(MyTitleKey.self, perform: { value in
                self.title = value ?? ""
            })
        }
    }
}
struct ChildView : View{
    var body: some View{
        Text("Child Text")
            .myTitle("From Child title")
    }
}
struct Mytest_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceExampleView()
    }
}


struct PreferenceExampleView_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceExampleView()
    }
}
