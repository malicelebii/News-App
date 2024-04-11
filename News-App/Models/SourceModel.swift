//
//  SourceModel.swift
//  News-App
//
//  Created by Mehmet Ali ÇELEBİ on 27.03.2024.
//

import Foundation

struct SourceModel: Codable {
    let name: String
    
    enum CodingKeys: CodingKey {
        case name
    }
}
