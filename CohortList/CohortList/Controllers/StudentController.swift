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
    
    func createStudent(name: String, studentID: Int) {
        let newStudent = Student(name: name, studentID: studentID)
        students.append(newStudent)
    }
    
}
