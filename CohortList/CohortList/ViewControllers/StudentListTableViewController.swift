//
//  StudentListTableViewController.swift
//  CohortList
//
//  Created by Andrew H on 5/10/22.
//

import UIKit

class StudentListTableViewController: UITableViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return StudentController.sharedInstance.students.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell", for: indexPath)
        let students = StudentController.sharedInstance.students[indexPath.row]
        cell.textLabel?.text = students.name
        cell.detailTextLabel?.text = "\(students.cohortID)"
        // Configure the cell...
        return cell
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            if let index = tableView.indexPathForSelectedRow {
                if let destination = segue.destination as? StudentDetailViewController {
                    let student = StudentController.sharedInstance.students[index.row]
                    destination.studentReciever = student
                        
                }
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
    }

}
