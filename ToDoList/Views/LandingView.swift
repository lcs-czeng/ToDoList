//
//  ContentView.swift
//  ToDoList
//
//  Created by 曾梓恒 on 2025-01-27.
//

import SwiftData
import SwiftUI

struct LandingView: View {
    
    // MARK: Stored properties
    
    // The item currently being added
    @State var newItemDescription: String = ""
    
    // The search text
    @State var searchText = ""
    
    // The list of the to-do items
    @Query var todos: [TodoItem]
    
    // Access model context
    @Environment(\.modelContext) var modelContext
    
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                List {
                    ForEach(todos) { todo in
                        
                        ItemView(currentItem: todo)
                 
                    }
                    .onDelete(perform: removeRows)
                }
                .searchable(text: $searchText)
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
            .onAppear {
                printCommandToOpenDatabaseFile()
            }
        }
    }
    
    // MARK: Functions
    func createToDo(withTitle title: String) {
        
        // Create the new to-do item instances
        let todo = TodoItem(
            title: title,
            done: false
        )
        
        // Use the model context to insert the new to-do
        modelContext.insert(todo)
        
        // Reset textfield after add new to-do item
        newItemDescription = ""
        
    }
    
    func removeRows(at offsets: IndexSet) {
        
        // Accept the offset within the list
        // (the position of the item being deleted)
        //
        // Then ask the model context to delete this
        // for us, from the 'todos' array
        for offset in offsets {
            modelContext.delete(todos[offset])
        }
    }
}

#Preview {
    LandingView()
        .modelContainer(TodoItem.preview)
}
