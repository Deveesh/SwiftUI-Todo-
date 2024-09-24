//
//  TaskView.swift
//  SwiftUI TodoApp
//
//  Created by Deveesh Mehandiratta on 23/09/24.
//

import SwiftUI

struct TaskView: View {
    var taskModel: TaskModel
    
    var body: some View {
        VStack(
            alignment: .leading
        ) {
            Text(
                taskModel.title
                
            ).font(.title)
            Text(
                taskModel.description
            )
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(10)
        .background {
            backgroundView
        }.cornerRadius(
            5
        )
    }
}

extension TaskView {
    var backgroundView: some View {
        switch taskModel.status {
            case .completed:
                Color.blue.opacity(
                    0.5
                )
            case .notCompleted:
                Color.gray.opacity(
                    0.2
                )
            }
    }
}

#Preview {
    var userData = MockData()
    return Group {
        TaskView(
            taskModel: userData.tasks[0]
        )
        TaskView(
            taskModel: userData.tasks[1]
        )
    }
}
