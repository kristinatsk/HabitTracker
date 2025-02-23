//
//  Habit.swift
//  HabitTracker
//
//  Created by Kristina Kostenko on 22.02.2025.
//

import Foundation
struct Habit: Identifiable, Codable, Equatable {
    var id = UUID()
    let title: String
    let description: String
    let completionCount: Int
    
}


class Habits: ObservableObject {
    var items: [Habit]  {
        didSet {
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Activities")
            }
        }
    }
    
    init() {
        if let savedHabits = UserDefaults.standard.data(forKey: "Activities") {
            if let decodedHabits = try? JSONDecoder().decode([Habit].self, from: savedHabits) {
                items = decodedHabits
                return
            }
        }
        items = []
    }
}
