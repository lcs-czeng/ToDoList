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
                    HStack {
                        Image(systemName: "circle")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.blue)
                        Text("Study for Chemistry quiz")
                    }
                    
                    HStack {
                        Image(systemName: "checkmark.circle")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.blue)
                        Text("Finish Computer Science assignment")
                    }
                    
                    HStack {
                        Image(systemName: "circle")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.blue)
                        Text("Go for a run around campus")
                    }
                }
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Enter a to-do item", text: $newItemDescription)
                    Button {
                        //Add to dynamic array
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
