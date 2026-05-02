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
    @State private var todoItems: [Item] = [
        Item(
            id: "abc123",
            authorId: "John Doe",
            title: "First item",
            description: "First description",
            startDate: .now
        ),
        Item(
            id: "123abc",
            authorId: "John Doe",
            title: "Second item",
            description: "Second description",
            startDate: .now
        ),
        Item(
            id: "789xyz",
            authorId: "John Doe",
            title: "Third item",
            description: "Third description",
            startDate: .now
        )
    ]
    
    @State private var inProgressItems: [Item] = [
        Item(
            id: "abc123",
            authorId: "John Doe",
            title: "First item",
            description: "First description",
            startDate: .now
        ),
        Item(
            id: "123abc",
            authorId: "John Doe",
            title: "Second item",
            description: "Second description",
            startDate: .now
        ),
        Item(
            id: "789xyz",
            authorId: "John Doe",
            title: "Third item",
            description: "Third description",
            startDate: .now
        )
    ]
    
    @State private var doneItems: [Item] = [
        Item(
            id: "abc123",
            authorId: "John Doe",
            title: "First item",
            description: "First description",
            startDate: .now
        ),
        Item(
            id: "123abc",
            authorId: "John Doe",
            title: "Second item",
            description: "Second description",
            startDate: .now
        ),
        Item(
            id: "789xyz",
            authorId: "John Doe",
            title: "Third item",
            description: "Third description",
            startDate: .now
        )
    ]
    
    var body: some View {
        NavigationStack {
            TabView {
                ListView(items: $todoItems, title: "To Do")
                
                ListView(items: $inProgressItems, title: "In Progress")
                
                ListView(items: $doneItems, title: "Done")
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
