//
//  ItemView.swift
//  ToDoList
//
//  Created by 曾梓恒 on 2025-01-27.
//

import SwiftUI

struct ItemView: View {
    
    let itemToDo: ToDoItem
    
    var body: some View {
        
        HStack {
            Image(systemName:itemToDo.itemStatus)
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(.blue)
            Text(itemToDo.itemName)
        }
    }
}

#Preview {
    ItemView(itemToDo: Chemistry)
}
