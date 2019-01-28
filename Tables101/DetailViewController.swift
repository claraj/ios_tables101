//
//  DetailViewController.swift
//  Tables101
//
//  Created by student1 on 1/27/19.
//  Copyright © 2019 clara. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var task: Task!
    
    @IBOutlet weak var taskDescription: UILabel!
    @IBOutlet weak var taskDate: UILabel!
 
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        taskDescription.text = task.description
        taskDate.text = Formatting.dateFormatter.string(from: task.dateCreated)
    }
    
}

