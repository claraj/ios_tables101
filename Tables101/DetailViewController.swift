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

    @IBOutlet var taskDetail: UILabel!
    @IBOutlet var taskDate: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        taskDetail.text = task.detail
        taskDate.text = task.formattedDateCreated
    }

    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
