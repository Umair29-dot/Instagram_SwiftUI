//
//  ContentViewModel.swift
//  Instagram
//
//  Created by h on 10.09.2024.
//

import Foundation
import FirebaseAuth
import Firebase

class ContentViewModel: ObservableObject {
    
    private let service = FirebaseService.shared
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        checkUserSession()
    }
    
    private func checkUserSession() {
        userSession = service.userSession
    }
    
}
