//
//  MainViewModel.swift
//  Swipe_Product
//
//  Created by Ayush Rajpal on 19/01/25.
//

import SwiftUI

struct MainViewModel: View {
    var body: some View {
        TabView {
            HomeViewModel()
                .tabItem { Image(systemName: "house") }
            AddProductViewModel()
                .tabItem { Image(systemName: "plus") }
            WishlistViewModel()
                .tabItem { Image(systemName: "heart") }
        }
    }
}

#Preview {
    MainViewModel()
}
