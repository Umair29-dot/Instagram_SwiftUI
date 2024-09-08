//
//  Post.swift
//  Instagram
//
//  Created by h on 3.09.2024.
//

import Foundation

struct Post: Identifiable, Codable {
    let id: String
    let ownerId: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timeStamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POST: [Post] = [
        Post(id: UUID().uuidString,
             ownerId: UUID().uuidString,
             caption: "ooo laaaa wwaaa",
             likes: 50,
             imageUrl: "https://picsum.photos/256",
             timeStamp: Date(),
             user: User.MOCK_USERS[0]
            ),
        Post(id: UUID().uuidString,
             ownerId: UUID().uuidString,
             caption: "wa maaaa eaaa ysyyy",
             likes: 1000,
             imageUrl: "https://picsum.photos/256",
             timeStamp: Date(),
             user: User.MOCK_USERS[0]
            ),
        Post(id: UUID().uuidString,
             ownerId: UUID().uuidString,
             caption: "Good morning my love starafa",
             likes: 220,
             imageUrl: "https://picsum.photos/256",
             timeStamp: Date(),
             user: User.MOCK_USERS[0]
            ),
        Post(id: UUID().uuidString,
             ownerId: UUID().uuidString,
             caption: "1000jsjsm%",
             likes: 20,
             imageUrl: "https://picsum.photos/256",
             timeStamp: Date(),
             user: User.MOCK_USERS[1]
            ),
        Post(id: UUID().uuidString,
             ownerId: UUID().uuidString,
             caption: "1000jsjsm%",
             likes: 20,
             imageUrl: "https://picsum.photos/256",
             timeStamp: Date(),
             user: User.MOCK_USERS[1]
            ),
        Post(id: UUID().uuidString,
             ownerId: UUID().uuidString,
             caption: "1000jsjsm%",
             likes: 20,
             imageUrl: "https://picsum.photos/256",
             timeStamp: Date(),
             user: User.MOCK_USERS[2]
            )
    ]
}
