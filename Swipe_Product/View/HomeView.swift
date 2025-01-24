//
//  HomeView.swift
//  Swipe_Product
//
//  Created by Ayush Rajpal on 19/01/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var couloums = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: couloums){
                    ForEach(viewModel.products, id: \.id){ product in
                        ProductCard(product: product)
                    }
                }
            }
            .navigationTitle("SwipeProducts")
            .onAppear(){
                print("View did apeare")
                viewModel.fetchProducts()
                print(viewModel.products)
            }
        }
    }
}

#Preview {
    HomeView()
}
