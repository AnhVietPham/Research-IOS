//
//  RowView.swift
//  TaskList
//
//  Created by PHAM ANH VIET on 3/21/20.
//  Copyright © 2020 PHAM ANH VIET. All rights reserved.
//

import SwiftUI

struct RowView: View {
    @Binding var task: Task
    
    let checkMark = Image(systemName: "checkmark")
    
    var body: some View{
        NavigationLink(
            destination : TaskEditingView(task: $task)
        ){
            if task.completed{
                checkMark
            }else{
                checkMark.hidden()
            }
            Text(task.nameTask)
                .strikethrough(task.completed)
        }
        
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(task: .constant(Task(nameTask: "To Do")))
    }
}
