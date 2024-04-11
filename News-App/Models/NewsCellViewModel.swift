//
//  NewsCellViewModel.swift
//  News-App
//
//  Created by Mehmet Ali ÇELEBİ on 27.03.2024.
//

import Foundation

class NewsCellViewModel {
    let title: String
    let subtitle: String
    let imageURL: URL?
    var imageData: Data? = nil
    
    init(title: String, subtitle: String, imageURL: URL?) {
        self.title = title
        self.subtitle = subtitle
        self.imageURL = imageURL
    }
}
