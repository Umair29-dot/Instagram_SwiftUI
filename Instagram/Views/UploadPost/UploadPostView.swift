//
//  UploadPostView.swift
//  Instagram
//
//  Created by h on 8.09.2024.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    
    @State private var caption = ""
    @State private var isPhotoPicker = false
    @StateObject private var viewModel = UploadPostViewModel()
    @State private var photoItem: PhotosPickerItem? = nil
    @Binding var selectedTabIndex: Int
    
    var body: some View {
        VStack {
            //Header
            HStack {
                Button(action: {
                    self.caption = ""
                    self.photoItem = nil
                    viewModel.postImage = nil
                    self.selectedTabIndex = 0
                }, label: {
                    Text("Cancel")
                })
                
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                })
            }//: HStack
            
            Spacer()
                .frame(height: 15)
            
            HStack(
                spacing: 10
            ) {
                if let photo = viewModel.postImage {
                    photo
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .clipped()
                }
                
                TextField("Enter your caption...", text: $caption, axis: .vertical)
                    .multilineTextAlignment(.leading)
            }//: HStack
            
            Spacer()
            
        }//: VStack
        .padding(.all, 10)
        .onAppear {
            self.isPhotoPicker.toggle()
        }
        .onChange(of: photoItem) { newItem in
            if let item = newItem {
                Task {
                    await viewModel.uploadPhoto(photo: item)
                }
            }
        }
        .photosPicker(isPresented: $isPhotoPicker, selection: $photoItem)
    }
}

#Preview {
    UploadPostView(selectedTabIndex: .constant(0))
}
