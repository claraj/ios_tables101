//
//  ViewController.swift
//  Tables101
//
//  Created by student1 on 1/27/19.
//  Copyright © 2019 clara. All rights reserved.
//

import UIKit

class TaskTableViewController: UITableViewController {
    
    var taskModel: TaskList!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func addNewTask(_ sender: Any) {
        let inputAlert = UIAlertController(title: "Enter Task", message: "What do you need to do?", preferredStyle: .alert)
        inputAlert.addTextField(configurationHandler: nil)
        inputAlert.addAction(UIAlertAction(title: "Add", style: .default, handler: {(action: UIAlertAction) in
            if let detail = inputAlert.textFields?[0].text {
                let task = Task(detail: detail)
                let index = self.taskModel.add(task)
                let indexPath = IndexPath(row: index, section: 0)
                self.tableView.insertRows(at: [indexPath], with: .automatic)
            }
        }
        ))
        inputAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(inputAlert, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return taskModel.count()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let task = taskModel.getTask(at: indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        cell.textLabel?.text = task!.detail
        cell.detailTextLabel?.text = "Created at \(task!.formattedDateCreated)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("select row")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showDetail" {
            let detailView = segue.destination as! DetailViewController
            let rowsSelected = tableView.indexPathsForSelectedRows
            let firstRow = rowsSelected?[0]
            let task = taskModel.getTask(at: (firstRow?.row)!)
            detailView.task = task
        }
    }
    
}

