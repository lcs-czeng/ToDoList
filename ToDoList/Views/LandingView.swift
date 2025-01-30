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
                }
                
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Enter a to-do item", text: $newItemDescription)
                    Button {
                        //Add to a dynamic array
                    } label: {
                        Text("ADD")
                    }
                    
                }
                .padding(20)
                
            }
            .navigationTitle("To Do List")
            
        }
    }
}

#Preview {
    LandingView()
}
