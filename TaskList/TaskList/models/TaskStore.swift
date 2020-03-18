//
//  TaskStore.swift
//  TaskList
//
//  Created by PHAM ANH VIET on 3/18/20.
//  Copyright © 2020 PHAM ANH VIET. All rights reserved.
//

import Foundation

class TaskStore {
    var tasks = [
        "Learn iOS",
        "Learn Flutter",
        "Read Book",
        "Learn Nodejs",
        "Practice Listening Skill",
        "Practice Speaking Skill",
        "Practice Reading Skill",
        "Practice Writting Skill",
        "Working on Sendo",
        "Learn Master of Computer Science"
        ].map{ Task(nameTask: $0) }
}
