//
//  NormalTextField.swift
//  FirstSwiftUI
//
//  Created by ankit ios on 11/07/21.
//

import SwiftUI

struct NormalTextField: View {
    @State var email : String = ""
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Sign In")
                .bold()
                .font(.system(size: 30))
            TextField.init("Enter your email here", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(.blue)
        }).padding()
    }
}

struct NormalTextField_Previews: PreviewProvider {
    static var previews: some View {
        NormalTextField()
    }
}
