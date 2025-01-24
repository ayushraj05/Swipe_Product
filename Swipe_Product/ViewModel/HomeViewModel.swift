//
//  HomeViewModel.swift
//  Swipe_Product
//
//  Created by Ayush Rajpal on 23/01/25.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var products: [Product] = []
    @Published var errorMessage: String? = nil
    private var networkManager = Network()
    
    func fetchProducts() {
        print("fetch preduct is called")
        networkManager.fetchProducts { [weak self] result in
            print("network manager get data is called")
            DispatchQueue.main.async {
                print(" in the dispatch queue")
                switch result {
                case .success(let products):
                    self?.products = products
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
                }
            }
        }
    }
    
}
