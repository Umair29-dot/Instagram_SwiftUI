//
//  UploadPostViewModel.swift
//  Instagram
//
//  Created by h on 8.09.2024.
//

import Foundation
import PhotosUI
import SwiftUI

@MainActor
class UploadPostViewModel: ObservableObject {
    
    @Published var postImage: Image? = nil
    
    //converting selected gallery image into Image
    func uploadPhoto(photo: PhotosPickerItem?) async {
        guard let item = photo else { return }
        guard let data = try? await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: data) else { return }
        self.postImage = Image(uiImage: uiImage)
    }
    
}
