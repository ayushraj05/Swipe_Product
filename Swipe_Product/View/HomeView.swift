//
//  HomeView.swift
//  Swipe_Product
//
//  Created by Ayush Rajpal on 19/01/25.
//

import SwiftUI

struct HomeView: View {
    var couloums = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: couloums){
                    ForEach(ProductList, id: \.id){ product in
                        ProductCard(product: product)
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
