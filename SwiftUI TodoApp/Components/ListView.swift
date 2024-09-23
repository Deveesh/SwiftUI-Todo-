//
//  ListView.swift
//  SwiftUI TodoApp
//
//  Created by Deveesh Mehandiratta on 23/09/24.
//

import SwiftUI

struct ListView: View {
    var listModel: ListModel
    
    var body: some View {
        List {
            Text(
                listModel.name
            ).listRowSeparator(.hidden)
            
            ForEach(
                listModel.tasks,
                id: \.id
            ) { task in
                TaskView(
                    taskModel: task
                )
            }.listRowSeparator(.hidden)
            
        }
    }
}

#Preview {
    var listMode = MockData()
    return ListView(
        listModel: listMode.lists
    )
}
