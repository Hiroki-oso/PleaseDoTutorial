//
//  ListItemView.swift
//  PleaseDoTutorial
//
//  Created by 吉田博喜 on 2026/05/03.
//

import SwiftUI

struct ListItemView: View {
    // MASK: - PROPERTIES
    let item: Item
    let height: CGFloat
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ListItemView(item: Item(
        id: "abc123",
        authorId: "John Doe",
        title: "First item",
        description: "First description",
        startDate: .now,
        status: .todo,
        priority: .low
    ),height: 100)
}
