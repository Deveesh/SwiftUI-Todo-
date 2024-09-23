//
//  MockData.swift
//  SwiftUI TodoApp
//
//  Created by Deveesh Mehandiratta on 23/09/24.
//

import Foundation

struct MockData {
    lazy var userData = UserDataModel(lists: [lists, lists])
    
    lazy var lists = ListModel(name: "List1", tasks: tasks)
    
    lazy var tasks : [TaskModel] = {
        var tasks : [TaskModel] = []
        
        tasks.append(getTask(title: "Task1", description: "Desc1", status: .completed))
        tasks.append(getTask(title: "Task2", description: "Desc2", status: .notCompleted))
        
        return tasks
    }()
    
    private func getTask(title: String, description: String, status: TaskModel.TaskStatus) -> TaskModel {
        return TaskModel(title: title, description: description, status: status)
    }
}
