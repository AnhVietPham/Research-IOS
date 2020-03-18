//
//  ContentView.swift
//  TaskList
//
//  Created by PHAM ANH VIET on 3/18/20.
//  Copyright © 2020 PHAM ANH VIET. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var taskStore : TaskStore
    
    var body: some View {
        List(taskStore.tasks){ task in
            Text(task.nameTask)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())
    }
}
