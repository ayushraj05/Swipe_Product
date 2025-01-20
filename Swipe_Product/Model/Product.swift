//
//  Product.swift
//  Swipe_Product
//
//  Created by Ayush Rajpal on 19/01/25.
//

import Foundation

struct Product: Identifiable, Decodable {
    var id: UUID
    var image: String = "https://vx-erp-product-images.s3.ap-south-1.amazonaws.com/9_1735114934_0_image.jpg"
    var product_name: String
    var price: Double
    var product_type: String
    var tax: Double
    var isLiked: Bool = false
}
