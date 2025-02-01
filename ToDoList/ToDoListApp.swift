//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by 曾梓恒 on 2025-01-27.
//

import SwiftData
import SwiftUI

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
