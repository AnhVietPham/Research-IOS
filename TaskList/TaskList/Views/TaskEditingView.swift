//
//  TaskEditingView.swift
//  TaskList
//
//  Created by PHAM ANH VIET on 3/21/20.
//  Copyright © 2020 PHAM ANH VIET. All rights reserved.
//

import SwiftUI

struct TaskEditingView: View {
    @Binding var task: Task
    
    var body: some View {
        Form{
            TextField("Name",text: $task.nameTask)
            Toggle("Completed", isOn: $task.completed)
        }
    }
}

struct TaskEditingView_Previews: PreviewProvider {
    static var previews: some View {
        TaskEditingView(
            task: .constant(Task(nameTask: "To Do"))
        )
    }
}
