//
//  TaskStore.PrioritizedTasks.swift
//  TaskList
//
//  Created by PHAM ANH VIET on 3/27/20.
//  Copyright © 2020 PHAM ANH VIET. All rights reserved.
//

import Foundation

extension TaskStore {
    struct PrioritizeTasks {
        let priority: Task.Priority
        var tasks: [Task]
    }
}

extension TaskStore.PrioritizeTasks: Identifiable{
    var id: Task.Priority{
        priority
    }
}
