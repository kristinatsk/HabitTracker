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
    HabitDetailView(habit: , habits: Habits())
}
