//
//  ToDoItem.swift
//  ToDoList
//
//  Created by 曾梓恒 on 2025-01-27.
//

import Foundation

struct ToDoItem: Identifiable {
    let id = UUID()
    let itemName: String
    let itemStatus: String
}

let Chemistry = ToDoItem(itemName: "Study for Chemistry quiz", itemStatus: "circle")

let CompSci = ToDoItem(itemName: "Finish Computer Science assignment", itemStatus: "checkmark.circle")

let Run = ToDoItem(itemName: "Go for a run around campus", itemStatus: "circle")

let items  = [Chemistry, CompSci, Run]
