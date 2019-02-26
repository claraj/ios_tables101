//
//  Task.swift
//  Tables101
//
//  Created by student1 on 1/27/19.
//  Copyright © 2019 clara. All rights reserved.
//

import Foundation

class Task: NSObject {
    
    var detail: String
    var dateCreated: Date
    
    init(detail: String, dateCreated: Date = Date()) {
        self.detail = detail
        self.dateCreated = dateCreated
    }
}

extension Task {
    
    var formattedDateCreated: String {
        return Task.dateCreatedFormatter.string(from: dateCreated)
    }
    
    static let dateCreatedFormatter = { () -> DateFormatter in 
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        return dateFormatter
    }()
}


