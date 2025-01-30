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
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                List {
                    ItemView(currentItem: firstItem)
                    
                    ItemView(currentItem: secondItem)
                    
                    ItemView(currentItem: thirdItem)
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
