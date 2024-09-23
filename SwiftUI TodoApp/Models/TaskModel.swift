//
//  TaskModel.swift
//  SwiftUI TodoApp
//
//  Created by Deveesh Mehandiratta on 23/09/24.
//

import Foundation

struct TaskModel: Identifiable {
    enum TaskStatus {
        case completed
        case notCompleted
    }
    
    let title, description: String
    let id = UUID().uuidString
    let status : TaskStatus
}
