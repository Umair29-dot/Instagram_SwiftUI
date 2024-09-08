//
//  ActionButton.swift
//  Instagram
//
//  Created by h on 1.09.2024.
//

import SwiftUI

struct ActionButton: View {
    
    var icon: String
    
    var body: some View {
        Button(action: {
            
        }, label: {
            Image(systemName: icon)
                .imageScale(.large)
        })
    }
}

#Preview {
    ActionButton(icon: "heart")
}
