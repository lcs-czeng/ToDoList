//
//  ToDoItem.swift
//  ToDoList
//
//  Created by 曾梓恒 on 2025-01-27.
//

import Foundation

struct ToDoItem: Identifiable {
    let id = UUID()
    var title: String
    var done: Bool
}

let Chemistry = ToDoItem(title: "Study for Chemistry quiz", done: false)

let CompSci = ToDoItem(title: "Finish Computer Science assignment", done: true)

let Run = ToDoItem(title: "Go for a run around campus", done: false)

let items  = [Chemistry, CompSci, Run]
