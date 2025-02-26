//
//  AuthViewModel.swift
//  MovieDirectory
//
//  Created by Michael Tjokrowardojo on 2025-02-09.
//

import SwiftUI
import FirebaseAuth

class AuthViewModel: ObservableObject {
    @Published var user: User? = nil // checks if there is user, or else set to nil
    @Published var errorMessage: String = "" // to store error messages
    
    init() {
        self.user = Auth.auth().currentUser // return currently signed in user if there is one
    }
    
    func login(email: String, password: String) async {
        do {
            // let because result is constant, cannot be changed while trying to login
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            DispatchQueue.main.async { // update UI in main thread
                self.user = result.user
                self.errorMessage = "" // remove existing error messages
            }
        } catch {
            DispatchQueue.main.async { // show error in main UI
                self.errorMessage = error.localizedDescription // login errors
            }
        }
    }
    
    func signUp(email: String, password: String) async {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            DispatchQueue.main.async {
                self.user = result.user
                self.errorMessage = ""
            }
        } catch{
            DispatchQueue.main.async {
                self.errorMessage = error.localizedDescription
            }
        }
    }
}

