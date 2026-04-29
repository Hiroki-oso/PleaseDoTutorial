//
//  HomeView.swift
//  PleaseDoTutorial
//
//  Created by 吉田博喜 on 2026/04/28.
//

import SwiftUI

struct HomeView: View {
    // MASK: - PROPERTIES
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack {
            TabView {
                Text("Page 2")
                
                Text("Page 2")
                
                Text("Page 2")
            }
            .tabViewStyle(.page)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(
                    placement: .topBarLeading) {
                        Button {
                            print("LOgout")
                        } label: {
                            Image(systemName: "person.circle")
                        }
                    }
                
                ToolbarItem(placement: .topBarTrailing){
                    Button {
                        print("Navigate to new item")
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }.navigationDestination(
                for: String.self) { _ in
                    Text("New View Here")
                }
        }

    }
}

#Preview {
    HomeView()
}
