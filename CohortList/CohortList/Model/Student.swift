//
//  Student.swift
//  CohortList
//
//  Created by Andrew H on 5/10/22.
//

import Foundation

class Student {
    var name: String
    var cohortID: Int
    var studentDescription: String
    
    init(name: String, cohortID: Int, studentDescription: String) {
        self.name = name
        self.cohortID = cohortID
        self.studentDescription = studentDescription
    }
}
extension Student: Equatable {
    static func == (lhs: Student, rhs: Student) -> Bool {
        return lhs.name == rhs.name &&
        lhs.cohortID == rhs.cohortID &&
        lhs.studentDescription == rhs.studentDescription
    }
}
