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
    //    @ObservedObject var taskStore : TaskStore
    @State var modelIsPresented = false
    
    var body: some View {
        NavigationView{
            List{
                //                ForEach(taskStore.tasks.indices){ index in
                //                    RowView(task: taskStore.tasks[index].nameTask)
                ////                    RowView(task: self.$taskStore.tasks[index])
                //                }
                ForEach(taskStore.tasks, id: \.id){ task in
//                    RowView(task: task.nameTask)
                    Text("Task: \(task.nameTask)")
                }
                .onMove{ sourceIndices, destinationIndex in
                    self.taskStore.tasks.move(
                        fromOffsets: sourceIndices,
                        toOffset: destinationIndex)
                    
                    }
                .onDelete{ indexSet in
                    self.taskStore.tasks.remove(atOffsets: indexSet)
                }
            }
            .navigationBarTitle("Tasks")
            .navigationBarItems(
                leading: EditButton(),
                trailing: Button(action : {
                    self.modelIsPresented = true
                }){
                    Image(systemName: "plus")
                }
            )
        }
        .sheet(isPresented: $modelIsPresented){
            NewTaskView(taskStore: self.taskStore)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())
    }
}

