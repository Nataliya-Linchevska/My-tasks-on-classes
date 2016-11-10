//
//  Worker.swift
//  03-Task-Worker
//
//  Created by user on 10.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation

class Worker {
    var name: String
    var job: String
    var yearStartJob: Int
    
    init(name: String, job: String, yearStartJob: Int) {
        self.name = name
        self.job = job
        self.yearStartJob = yearStartJob
    }
    
    func information() -> String {
        return name + ", " + job + ", start job " + yearStartJob.description
    }
    
}
