//
//  TaskStore.swift
//  TaskList
//
//  Created by PHAM ANH VIET on 3/18/20.
//  Copyright © 2020 PHAM ANH VIET. All rights reserved.
//

import Foundation
import Combine

class TaskStore : ObservableObject {
    
    @Published var prioritizedTasks = [
        PrioritizeTasks(
            priority: .high,
            names: [
                "Code a SwiftUI app",
                "Book a room",
                "Walk a cat",
                "Pick up heavy things and put them"
            ]
        ),
        PrioritizeTasks(
            priority: .medium,
            names: [
                "Practice Listening Skill",
                "Practice Speaking Skill",
                "Practice Reading Skill",
                "Practice Writting Skill"
            ]
        ),
        PrioritizeTasks(
            priority: .low,
            names: [
                "Play game",
                "Listen to music",
                "Watching TV",
                "Backend NodeJS"
            ]
        ),
        PrioritizeTasks(
            priority: .no,
            names: [
                "No girls",
                "No sex"
            ]
        ),
    ]
    
    func getIndex(for priority: Task.Priority) -> Int {
        prioritizedTasks.firstIndex{$0.priority == priority}!
    }
}

extension TaskStore.PrioritizeTasks{
    init(priority: Task.Priority, names: [String]) {
        self.init(
            priority: priority,
            tasks: names.map {
                Task(nameTask: $0)
            }
            
        )
    }
}


