//
//  FirebaseService.swift
//  Instagram
//
//  Created by h on 10.09.2024.
//

import Foundation
import FirebaseAuth

class FirebaseService {
    
    static let shared = FirebaseService()
    
    var userSession: FirebaseAuth.User? = Auth.auth().currentUser
    
}
