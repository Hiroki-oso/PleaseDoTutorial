//
//  ListView.swift
//  PleaseDoTutorial
//
//  Created by 吉田博喜 on 2026/04/30.
//

import SwiftUI
// MASK: - PROPERTIES


struct ListView: View {
    // MASK: - PROPERTIES
    @Binding var items: [Item]
    let title: String
    var body: some View {
        VStack(spacing: 0){
            Text(title)
                .font(.title2)
                .fontWeight(.medium)
                .frame(maxWidth: .infinity, maxHeight: 32)
                .background {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.orange)
                        .overlay {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.white, lineWidth: 2)
                        }
                }
                .padding(.horizontal)
                .padding(.top)
            
            List ($items){ $item in
               Text("Item 1")
                
                Text("Item 2")
                
                Text("Item 3")
            }
            .scrollContentBackground(.hidden)
            .listStyle(.insetGrouped)
        }
    }
}

#Preview {
    ListView(
        items: .constant(
            [
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
                ),
            ]
        ),
        title: "To Do"
    )
}
