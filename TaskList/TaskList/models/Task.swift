//
//  Task.swift
//  TaskList
//
//  Created by PHAM ANH VIET on 3/18/20.
//  Copyright © 2020 PHAM ANH VIET. All rights reserved.
//

import Foundation

struct Task : Identifiable {
    let id = UUID()
    var nameTask : String
    var completed: Bool = false
    
}
	
