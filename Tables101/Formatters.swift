//
//  Formatter.swift
//  Tables101
//
//  Created by student1 on 1/27/19.
//  Copyright © 2019 clara. All rights reserved.
//

import Foundation

class Formatters {
    
static let dateFormatter: DateFormatter = {
    let df = DateFormatter()
    df.dateStyle = .short
    df.timeStyle = .short
    return df
}()
}
