//
//  ItemView.swift
//  ToDoList
//
//  Created by 曾梓恒 on 2025-01-27.
//

import SwiftUI

struct ItemView: View {
    
    let title: String
    
    let done: Bool
    
    var body: some View {
        
        Label(
            title: {
                Text(title)
            },icon: {
                Image(systemName: done == true ? "checkmark.circle" : "circle")
            }
        )
    }
}



#Preview {
    ItemView(title: "Go for a run around campus", done: false)
}
