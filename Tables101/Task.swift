//
//  Task.swift
//  Tables101
//
//  Created by student1 on 1/27/19.
//  Copyright © 2019 clara. All rights reserved.
//

import Foundation

class Task {
    var description: String
    var dateCreated: Date
    
    init(description: String, dateCreated: Date = Date()) {
        self.description = description
        self.dateCreated = dateCreated
    }
}
