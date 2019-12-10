//
//  EmployeeSavedOps.swift
//  EmployeeCoreData
//
//  Created by Salma on 12/9/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import UIKit
import CoreData

class EmployeeSavedOps {
    
    private let coreDataManager = CoreDataManager.shared
    private let context = CoreDataManager.shared.mainContext
    static let shared = EmployeeSavedOps()
    
    private init() {}
    
    func saveEmployee(employeeObject: EmployeeModel) {
        
        let employeeManagedObject = Employee(context: context)
        
        employeeManagedObject.firstName = employeeObject.firstName
        employeeManagedObject.lastName = employeeObject.lastName
        employeeManagedObject.birthYear = employeeObject.birthYear
        employeeManagedObject.employeeID = employeeObject.employeeID
        
        coreDataManager.saveContext(context: context)
    }

}
