//
//  ToDoItem.swift
//  ToDoList
//
//  Created by 曾梓恒 on 2025-01-27.
//

import SwiftData

@Model

class ToDoItem: Identifiable {
    var title: String
    var done: Bool
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
    
}

let firstItem = ToDoItem(title: "Study for Chemistry quiz", done: false)

let secondItem = ToDoItem(title: "Finish Computer Science assignment", done: true)

let thirdItem = ToDoItem(title: "Go for a run around campus", done: false)

let items  = [
    firstItem,
    secondItem,
    thirdItem
]
