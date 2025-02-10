//
//  ContentView.swift
//  MovieDirectory
//
//  Created by Michael Tjokrowardojo on 2025-01-30.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Text("Login Page")
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: username)
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    LoginView()
}
