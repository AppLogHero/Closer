//
//  CloserApp.swift
//  Closer
//
//  Created by Julien Delferiere on 25/05/2024.
//

import SwiftUI
import SwiftData

@main
struct CloserApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            TabBarView(items: TabItems.allCases) { item in
                Group {
                    switch item {
                    case .home:
                        HomeView(viewModel: HomeViewModel())
                    case .feed:
                         Text("Feed")
                    case .publish:
                         Text("Publish")
                    case .messages:
                         Text("Messages")
                    //case .notifications:
                    //    return Text("Notifications")
                    case .settings:
                        Text("Settings")
                    }
                }
            }
        }
        .modelContainer(sharedModelContainer)
    }
}
