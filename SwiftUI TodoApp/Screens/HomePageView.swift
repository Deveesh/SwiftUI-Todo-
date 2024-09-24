//
//  HomePageView.swift
//  SwiftUI TodoApp
//
//  Created by Deveesh Mehandiratta on 23/09/24.
//

import SwiftUI

struct HomePageView: View {
    
    @StateObject var viewModel = HomePageViewModel()
    var body: some View {
        VStack {
            ListView(
                listModel: viewModel.userData.list
            )
            .cornerRadius(
                30
            )
            
            
            NavigationLink(destination: AddTaskView( viewModel: viewModel)) {
                Image(
                    systemName: "plus.rectangle.fill"
                )
                .resizable()
                .scaledToFit()
                .frame(
                    width: 70,
                    height: 70
                )
                .foregroundStyle(
                    .pink
                )
            }
            
            
        }.navigationTitle("Todo list")
        .padding()
    }
}

#Preview {
    var viewModel = HomePageViewModel()
    viewModel.addTask(withName: "Name", description: "Desc")
    return NavigationStack {
        HomePageView(
            viewModel: viewModel
        )
    }
}
