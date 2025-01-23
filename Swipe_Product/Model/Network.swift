//
//  Network.swift
//  Swipe_Product
//
//  Created by Ayush Rajpal on 19/01/25.
//

import Foundation

protocol NetworkProtocol: AnyObject{
    func UpdateProducts(_ products: [Product])
    func didFailWithError(error: Error)
}

class Network{
    let urlString = "https://app.getswipe.in/api/public/get"
    var delegate: NetworkProtocol?
    
    func getData(){
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if let error{
                    self.delegate?.didFailWithError(error: error)
                }
                if let safeData = data{
                    if let productData = self.parseData(safeData){
                        self.delegate?.UpdateProducts(productData)
                    }
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
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
}
