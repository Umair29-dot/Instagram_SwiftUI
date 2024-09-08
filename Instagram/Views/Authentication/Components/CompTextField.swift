//
//  CustomTextField.swift
//  Instagram
//
//  Created by h on 2.09.2024.
//

import SwiftUI

struct CompTextField: View {
    
    var title: String
    @Binding var value: String
    
    var body: some View {
        TextField(title, text: $value)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
        
    }
}

#Preview {
    CompTextField(title: "Email", value: .constant(""))
}
