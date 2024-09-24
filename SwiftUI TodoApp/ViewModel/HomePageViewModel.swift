//
//  HomePageViewModel.swift
//  SwiftUI TodoApp
//
//  Created by Deveesh Mehandiratta on 23/09/24.
//

import Foundation

class HomePageViewModel: HomePageViewModelProtocol, ObservableObject {
    @Published private(set) var userData = UserDataModel()

    func addTask(withName name: String, description: String) {
        userData.list.tasks.append(TaskModel(title: name, description: description, status: .notCompleted))
    }
}

protocol HomePageViewModelProtocol {
    
}
