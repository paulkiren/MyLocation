//
//  MyLocationApp.swift
//  MyLocation
//
//  Created by Kiren Paul on 17/3/2566 BE.
//

import SwiftUI

@main
struct MyLocationApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
