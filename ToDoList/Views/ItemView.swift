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
        
        Label(
            title: {
                Text(itemToDo.itemName)
            },icon: {
                Image(systemName: itemToDo.itemStatus)
            }
        )
    }
}



#Preview {
    ItemView(itemToDo: CompSci)
}
