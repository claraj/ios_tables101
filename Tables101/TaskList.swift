//
//  ThingList.swift
//  Tables101
//
//  Created by student1 on 1/27/19.
//  Copyright © 2019 clara. All rights reserved.
//

//import Foundation

class TaskList {
    
    var tasks = [Task]()
    
    init(){
//        tasks.append(Task(detail: "water plants"))
//        tasks.append(Task(detail: "feed cat"))
//        tasks.append(Task(detail: "get car oil changed"))
    }
    
    func add(_ task: Task) -> Int {
        tasks.append(task)
        return tasks.endIndex - 1
    }
    
    func getTask(at index: Int) -> Task? {
        if tasks.indices.contains(index) {
            return tasks[index]
        }
        return nil
    }
    
    func count() -> Int {
        return tasks.count
    }
    
    func deleteTask(task: Task) {
        if let i = tasks.index(of: task) {
            tasks.remove(at: i)
        }
    }
}
