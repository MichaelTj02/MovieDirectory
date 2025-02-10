//
//  ContentView.swift
//  MovieDirectory
//
//  Created by Michael Tjokrowardojo on 2025-01-30.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    
    var body: some View {
        NavigationStack {
            
            VStack (spacing: 20) {
                Text("Movie Directory App")
                .font(.largeTitle)
                    .fontWeight(.bold)
                
                VStack {
                    TextField("Email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }.padding(.horizontal)
                
                Button("Login") {
                    Task {
                        
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    LoginView()
}
