//
//  MainViewModel.swift
//  Swipe_Product
//
//  Created by Ayush Rajpal on 19/01/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Image(systemName: "house") }
            AddProductView()
                .tabItem { Image(systemName: "plus") }
            WishlistView()
                .tabItem { Image(systemName: "heart") }
        }
    }
}

#Preview {
    MainView()
}
