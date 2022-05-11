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
    
    func createStudent(name: String, cohortID: Int) {
        let newStudent = Student(name: name, cohortID: cohortID)
        students.append(newStudent)
    }
    
}
