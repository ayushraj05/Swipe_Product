//
//  Network.swift
//  Swipe_Product
//
//  Created by Ayush Rajpal on 19/01/25.
//

import Foundation

class Network {
    let urlString = "https://app.getswipe.in/api/public/get"
    
    func fetchProducts(completion: @escaping (Result<[Product], Error>) -> Void){
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if let error{
                    completion(.failure(error))
                }
                if let safeData = data{
                    if let productData = self.parseData(safeData){
                        completion(.success(productData))
                    }
                }
                else{
                    completion(.failure(NSError(domain: "No data", code: 0, userInfo: nil)))
                }
            }
            task.resume()
        }
    }
    
    func parseData(_ data: Data) -> [Product]?{
        do{
            let decoder = JSONDecoder()
            let products = try decoder.decode([Product].self, from: data)
            return products.self
        }catch{
            return nil
        }
    }
}
