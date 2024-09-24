//
//  ContentView.swift
//  SwiftUI TodoApp
//
//  Created by Deveesh Mehandiratta on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            HomePageView()            
        }
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
