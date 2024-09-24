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
        VStack(alignment: .leading) {
            Text(
                listModel.name
            )
            .listRowSeparator(.hidden)
            .font(.title)
            .fontWeight(.semibold)
            
            List {
                ForEach(
                    listModel.tasks,
                    id: \.id
                ) { task in
                    TaskView(
                        taskModel: task
                    )
                }.listRowSeparator(.hidden)
                    
                
            }.listStyle(PlainListStyle())
            
        }.padding()
    }
}

#Preview {
    var listMode = MockData()
    return NavigationStack {
        ListView(
            listModel: listMode.lists
        ).navigationTitle("Todo list")
    }
}
