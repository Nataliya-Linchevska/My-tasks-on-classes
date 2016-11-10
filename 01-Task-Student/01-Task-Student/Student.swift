//
//  Student.swift
//  01-Task-Student
//
//  Created by user on 10.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation

class Student{
    var name: String
    var group: Int
    var progress: [Int]
    init(name: String, group: Int, progress: [Int]) {
        self.name = name
        self.group = group
        self.progress = progress
    }
}
