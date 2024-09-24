//
//  AddTaskView.swift
//  SwiftUI TodoApp
//
//  Created by Deveesh Mehandiratta on 24/09/24.
//

import SwiftUI

struct AddTaskView: View {
    @State var taskName = ""
    @State var taskDescription = ""
    @ObservedObject var viewModel : HomePageViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Spacer()
            
            TextField("Enter task name", text: $taskName)
                .padding()
                .frame(height: 50)
                .background(Color.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 5))
            
            TextField("Enter task description", text: $taskDescription)
                .padding()
                .frame(height: 50)
                .background(Color.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 5))
            
            Button("Add") {
                viewModel.addTask(withName: taskName, description: taskDescription)
                presentationMode.wrappedValue.dismiss()
            }
            .tint(.white)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 5))
    
            
            
        }.padding()
    }
}

#Preview {
    AddTaskView(viewModel: HomePageViewModel())
}
