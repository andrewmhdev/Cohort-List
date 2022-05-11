//
//  StudentController.swift
//  CohortList
//
//  Created by Andrew H on 5/10/22.
//

import Foundation


class StudentController {
    
    var students: [Student] = []
    
    static let sharedInstance = StudentController()
    // it allows only a single instance of itself to be established
    
    func createStudent(name: String, cohortID: Int, studentDescription: String) {
        let newStudent = Student(name: name, cohortID: cohortID, studentDescription: studentDescription)
        students.append(newStudent)
    }
    
    func updateStudent(newName: String, newCohort: Int, newStudentDetails: String, studentToUpdate: Student) {
        
        studentToUpdate.name = newName
        studentToUpdate.cohortID = newCohort
        studentToUpdate.studentDescription = newStudentDetails
    }
    func deleteStudent(studentToDelete: Student) {
        guard let indexOfStudentToDelete = students.firstIndex(of: studentToDelete) else {return}
        students.remove(at: indexOfStudentToDelete)
        
    }
}
