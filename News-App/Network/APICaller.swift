//
//  APICaller.swift
//  News-App
//
//  Created by Mehmet Ali ÇELEBİ on 27.03.2024.
//

import Foundation
import Alamofire

final class APICaller {
    static let shared = APICaller()
    
    struct Constants {
        static var apiKey = ""
        static let baseUrl = "https://newsapi.org/v2/top-headlines?country=us&apiKey="
    }
 
    func getTopStories(completion: @escaping (Result<[ArticleModel],Error>) -> ()) {
        guard let url = URL(string: "\(Constants.baseUrl)\(Constants.apiKey)") else { return }
        
        AF.request(url).responseDecodable(of: ApiResponseModel.self) { response in
            switch response.result {
            case .success(let responseModel):
                completion(.success(responseModel.articles))
                break
            case .failure(let error):
                completion(.failure(error))
                break
            }
        }
    }
}
