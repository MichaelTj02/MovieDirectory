//
//  AuthViewModel.swift
//  MovieDirectory
//
//  Created by Michael Tjokrowardojo on 2025-02-09.
//

import SwiftUI
import FirebaseAuth

class AuthViewModel: ObservableObject {
    @Published var user: User? = nil
    @Published var errorMessage: String = ""
    
    init() {
        self.user = Auth.auth().currentUser // return currently signed in user if there is one
    }
}

