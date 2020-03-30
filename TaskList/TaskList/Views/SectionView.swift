//
//  SectionView.swift
//  TaskList
//
//  Created by PHAM ANH VIET on 3/27/20.
//  Copyright © 2020 PHAM ANH VIET. All rights reserved.
//

import SwiftUI

struct SectionView: View {
    
    @Binding var prioritizedTasks: TaskStore.PrioritizeTasks
    
    var body: some View {
        Section(header:
            Text(
                "\(prioritizedTasks.priority.rawValue.capitalized) Priority"
            )
        ){
            
            ForEach(prioritizedTasks.tasks){ index in
                RowView(task: self.$prioritizedTasks.tasks[index])
            }
                
            .onMove{ sourceIndices, destinationIndex in
                self.prioritizedTasks.tasks.move(
                    fromOffsets: sourceIndices,
                    toOffset: destinationIndex)
                
            }
            .onDelete{ indexSet in
                self.prioritizedTasks.tasks.remove(atOffsets: indexSet)
            }
        }
    }
}
