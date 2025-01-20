//
//  Swipe_ProductApp.swift
//  Swipe_Product
//
//  Created by Ayush Rajpal on 19/01/25.
//

import SwiftUI

@main
struct Swipe_ProductApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
