//
//  HomeView.swift
//  PleaseDoTutorial
//
//  Created by 吉田博喜 on 2026/04/28.
//

import SwiftUI

struct HomeView: View {
    // MASK: - PROPERTIES
    @State private var path: [NavPath] = []
    @State private var todoItems: [Item] = [
        Item(
            id: "abc123",
            authorId: "John Doe",
            title: "First item",
            description: "First description",
            startDate: .now,
            status: .todo,
            priority: .low
        ),
        Item(
            id: "123abc",
            authorId: "John Doe",
            title: "Second item",
            description: "Second description",
            startDate: .now,
            status: .inProgress,
            priority: .medium
        ),
        Item(
            id: "789xyz",
            authorId: "John Doe",
            title: "Third item",
            description: "Third description",
            startDate: .now,
            status: .todo,
            priority: .low
        )
    ]
    
    @State private var inProgressItems: [Item] = [
        Item(
            id: "abc123",
            authorId: "John Doe",
            title: "First item",
            description: "First description",
            startDate: .now,
            status: .todo,
            priority: .low
        ),
        Item(
            id: "123abc",
            authorId: "John Doe",
            title: "Second item",
            description: "Second description",
            startDate: .now,
            status: .inProgress,
            priority: .medium
        ),
        Item(
            id: "789xyz",
            authorId: "John Doe",
            title: "Third item",
            description: "Third description",
            startDate: .now,
            status: .todo,
            priority: .low
        )
        
    ]
    
    @State private var doneItems: [Item] = [
        Item(
            id: "abc123",
            authorId: "John Doe",
            title: "First item",
            description: "First description",
            startDate: .now,
            status: .todo,
            priority: .low
        ),
        Item(
            id: "123abc",
            authorId: "John Doe",
            title: "Second item",
            description: "Second description",
            startDate: .now,
            status: .inProgress,
            priority: .medium
        ),
        Item(
            id: "789xyz",
            authorId: "John Doe",
            title: "Third item",
            description: "Third description",
            startDate: .now,
            status: .todo,
            priority: .low
        )
    ]
    
    var body: some View {
        NavigationStack(path: $path) {
            ZStack{
                Color.background
                    .ignoresSafeArea()
                TabView {
                    ListView(items: $todoItems, title: "To Do")
                    
                    ListView(items: $inProgressItems, title: "In Progress")
                    
                    ListView(items: $doneItems, title: "Done")
                }
                .tabViewStyle(.page)
            }

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
                        path.append(NavPath.newItem)
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }.navigationDestination(
                for: NavPath.self) { path in
                    switch path {
                    case .newItem:
                        Text("New item view here")
                    case .details:
                        Text("Item details view here")
                        
                    }
                }
        }

    }
}

#Preview {
    HomeView()
}
