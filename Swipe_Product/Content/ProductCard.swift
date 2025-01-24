//
//  ProductView.swift
//  Swipe_Product
//
//  Created by Ayush Rajpal on 19/01/25.
//

import SwiftUI
import SDWebImageSwiftUI

struct ProductCard: View {
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                WebImage(url: URL(string:product.image))
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                    .frame(width: 180, height: 250)
                
                VStack(alignment: .leading) {
                    Text(product.product_name)
                        .bold()
                    
                    Text("\(product.price) $")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
            
            Button {
                print("Added to wishlist")
            } label: {
                Image(systemName: "heart")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

//struct ProductCard_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductCard(product: ProductList[0])
////            .environmentObject()
//    }
//}
