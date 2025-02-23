//
//  HabitDetailView.swift
//  HabitTracker
//
//  Created by Kristina Kostenko on 22.02.2025.
//

import SwiftUI

struct HabitDetailView: View {
    var habit: Habit
    @ObservedObject var habits: Habits
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    let sampleHabit = Habit(title: "Code", description: "Code every day", completionCount: 0)
    let habits = Habits()
    
    habits.items.append(sampleHabit)
    
    return HabitDetailView(habit: sampleHabit, habits: habits)
}
