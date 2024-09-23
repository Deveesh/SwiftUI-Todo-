//
//  HomePageView.swift
//  SwiftUI TodoApp
//
//  Created by Deveesh Mehandiratta on 23/09/24.
//

import SwiftUI

struct HomePageView: View {
    var userData: UserDataModel
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(userData.lists, id: \.self.id) { list in
                    ListView(listModel: list)
                        .frame(width: UIScreen.main.bounds.width * 0.7)
                }
            }
        }
    }
}

#Preview {
    var data = MockData()
    return HomePageView(userData: data.userData)
}
