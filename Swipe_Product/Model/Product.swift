//
//  Product.swift
//  Swipe_Product
//
//  Created by Ayush Rajpal on 19/01/25.
//

import Foundation

struct Product: Identifiable, Decodable {
    var id = UUID()
    var image: String = "https://images.app.goo.gl/vU4vJciFjhMznTHW8"
    var product_name: String
    var price: Double
    var product_type: String
    var tax: Double
    var isLiked: Bool = false
}

var ProductList = [Product(product_name: "Testing app", price: 1694.91525424, product_type: "Product", tax: 18),
                   Product(product_name: "Testing Update", price: 14745.76271186, product_type: "Service", tax: 18),
                   Product(product_name: "Testing", price: 78, product_type: "Sample", tax: 18),
                   Product(product_name: "apple", price: 120, product_type: "Fruit", tax: 18)]
