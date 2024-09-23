//
//  ListModel.swift
//  SwiftUI TodoApp
//
//  Created by Deveesh Mehandiratta on 23/09/24.
//

import Foundation

struct ListModel: Identifiable {
    let id = UUID().uuidString
    let name: String
    let tasks: [TaskModel]
}
