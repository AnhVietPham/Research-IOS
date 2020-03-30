//
//  ContentView.swift
//  TaskList
//
//  Created by PHAM ANH VIET on 3/18/20.
//  Copyright © 2020 PHAM ANH VIET. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var taskStore : TaskStore
    @State var modelIsPresented = false
    
    var body: some View {
        NavigationView{
            List{
                ForEach(taskStore.prioritizedTasks){ index in
                    SectionView(prioritizedTasks: self.$taskStore.prioritizedTasks[index])
                }
                
            }
            .listStyle(GroupedListStyle())
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

