//
//  User.swift
//  Instagram
//
//  Created by h on 2.09.2024.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        User(id: UUID().uuidString, username: "Umair", profileImageUrl: "https://picsum.photos/256", fullname: "Umair Nazim", bio: "Junior Software Engineer", email: "umair@gmail.com"),
        User(id: UUID().uuidString, username: "Sunny", profileImageUrl: "https://picsum.photos/256", fullname: "Sunny Ch", bio: "Android developer", email: "sunny@gmail.com"),
        User(id: UUID().uuidString, username: "Zainab", profileImageUrl: "https://picsum.photos/256", fullname: "Zainab Khan", bio: "Junior Software Engineer", email: "zainab@gmail.com"),
        User(id: UUID().uuidString, username: "Shiza", profileImageUrl: "https://picsum.photos/256", fullname: "Shiza Khan", bio: "Photographer", email: "shiza@gmail.com")
    ]
}
