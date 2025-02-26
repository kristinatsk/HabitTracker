//
//  AddHabitView.swift
//  HabitTracker
//
//  Created by Kristina Kostenko on 23.02.2025.
//

import SwiftUI

struct AddHabitView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var habitTitle: String = ""
    @State private var habitsDescription: String = ""
    @State private var completionAmount = 0
    
    var habits: Habits
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Title", text: $habitTitle)
                TextField("Description", text: $habitsDescription)
            }
            
            .navigationTitle("Add item")
            .toolbar {
                Button("Save") {
                    let item = Habit(title: habitTitle, description: habitsDescription, completionCount: completionAmount)
                    habits.items.append(item)
                    dismiss()
                }
            }
            
        }
    }
}

#Preview {
    AddHabitView(habits: Habits())
        .preferredColorScheme(.dark)
}
