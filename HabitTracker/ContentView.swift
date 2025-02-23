//
//  ContentView.swift
//  HabitTracker
//
//  Created by Kristina Kostenko on 22.02.2025.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var habits = Habits()
    @State private var showAddHabitView = false
    
    var body: some View {
        NavigationStack {
            
                List {
                    ForEach(habits.items) { habit in
                        NavigationLink(destination: HabitDetailView(habit: habit, habits: habits)) {
                            VStack {
                                Text("\(habit.title)")
                                Text("\(habit.description)")
                            }
                        }
                    }
                    .onDelete(perform: deleteItem)
                }
            
        }
        .navigationTitle("Habit Tracker")
        .toolbar {
            Button("Add item", systemImage: "plus") {
                showAddHabitView = true
            }
        }
        .sheet(isPresented: $showAddHabitView) {
            AddHabitView(habits: habits)
        }
    }
    
    func deleteItem(at offsets: IndexSet) {
        habits.items.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
