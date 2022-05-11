//
//  StudentDetailViewController.swift
//  CohortList
//
//  Created by Andrew H on 5/11/22.
//

import UIKit

class StudentDetailViewController: UIViewController {

    @IBOutlet weak var studentNameTextField: UITextField!
    
    @IBOutlet weak var cohortLabel: UILabel!
    @IBOutlet weak var cohortNumberTextField: UITextField!
    @IBOutlet weak var studentDescriptionTextView: UITextView!
    
    
    //MARK: Reciever var
    var studentReciever: Student?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews(studentToDisplay: studentReciever)
        

    }
    
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = studentNameTextField.text,
              let cohortID = cohortNumberTextField.text,
              let studentDescription = studentDescriptionTextView.text else {return}
        if let student = studentReciever {
            StudentController.sharedInstance.updateStudent(newName: name, newCohort: Int(cohortID) ?? 0, newStudentDetails: studentDescription, studentToUpdate: student)
        } else {
            StudentController.sharedInstance.createStudent(name: name, cohortID: Int(cohortID) ?? 0, studentDescription: studentDescription)
        }
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func clearButtonTapped(_ sender: Any) {
        clearData()
    }
    @IBAction func deleteButtonTapped(_ sender: Any) {
        guard let student = studentReciever else {return}
            StudentController.sharedInstance.deleteStudent(studentToDelete: student)
        self.navigationController?.popViewController(animated: true)
    }

    func updateViews(studentToDisplay: Student?) {
        guard let studentToDisplay = studentToDisplay else {return}
        studentNameTextField.text = studentToDisplay.name
        cohortNumberTextField.text = "\(studentToDisplay.cohortID)"
        studentDescriptionTextView.text = studentToDisplay.studentDescription
        
    }
    
    func clearData() {
        studentNameTextField.text = ""
        cohortNumberTextField.text = ""
    }
    
    
}
