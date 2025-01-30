//
//  ContentView.swift
//  ToDoList
//
//  Created by 曾梓恒 on 2025-01-27.
//

import SwiftUI

struct LandingView: View {
    
    // MARK: Stored properties
    
    // The item currently being added
    @State var newItemDescription: String = ""
    
    // The search text
    @State var searchText = ""
    
    // The list of the to-do items
    @State var todos: [ToDoItem] = items
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                List(todos) { todo in
                    ItemView(currentItem: todo)
                    
                    // Delete a to-do item
                        .swipeActions {
                            Button(
                                "Delete",
                                role: .destructive,
                                action: {
                                    delete(todo)
                                }
                            )
                        }
                }
                .searchable(text: $searchText)
                .navigationTitle("To Do List")
                
                HStack {
                    TextField("Enter a to-do item", text: $newItemDescription)
                    Button("ADD") {
                        createToDo(withTitle: newItemDescription)
                    }
                    .disabled(newItemDescription.isEmpty == true)
                }
                .padding(20)
                
            }
        }
    }
    
    // MARK: Functions
    func createToDo(withTitle title: String) {
        
        // Create the new to-do item instances
        let todo = ToDoItem(
            title: title,
            done: false
        )
        
        // Add to the array
        todos.append(todo)
        
    }
    
    func delete(_ todo: ToDoItem) {
        
        // Delete existing to-do items
        todos.removeAll { currentItem in
            currentItem.id == todo.id
        }
    }
}

#Preview {
    LandingView()
}
