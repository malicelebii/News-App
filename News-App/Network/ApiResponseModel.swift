//
//  ApiResponseModel.swift
//  News-App
//
//  Created by Mehmet Ali ÇELEBİ on 27.03.2024.
//

import Foundation

struct ApiResponseModel: Codable {
    let articles: [ArticleModel]
    
    enum CodingKeys: String, CodingKey {
        case articles
    }
}
