//
//  HabitDetailView.swift
//  HabitTracker
//
//  Created by Kristina Kostenko on 22.02.2025.
//

import SwiftUI

struct HabitDetailView: View {
    var habit: Habit
    var habits: Habits
    
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(habit.title)")
                .font(.title)
                .fontWeight(.bold)
            Text("\(habit.description)")
            Text("Completion count: \(habit.completionCount)")
            
            Button("Increment") {
                if let index = habits.items.firstIndex(of: habit) {
                    var newHabit = habit
                    newHabit.completionCount += 1
                    habits.items[index] = newHabit
                    habits.save()
                }
            }
        }
    }
}



/*
#Preview {
    let sampleHabit = Habit(title: "Code", description: "Code every day", completionCount: 0)
    let habits = Habits()
    
    habits.items.append(sampleHabit)
    
    return HabitDetailView(habit: sampleHabit, habits: habits)
        .preferredColorScheme(.dark)
}
*/
