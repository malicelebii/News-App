//
//  ArticleModel.swift
//  News-App
//
//  Created by Mehmet Ali ÇELEBİ on 27.03.2024.
//

import Foundation

struct ArticleModel: Codable {
    let source: SourceModel
    let title: String
    let description: String?
    let url: String
    let urlToImage: String?
    let publishedAt: String
    
    enum CodingKeys: String, CodingKey {
        case source
        case title
        case description
        case url
        case urlToImage
        case publishedAt
    }
}
