//
//  EmployeeDeleteOps.swift
//  EmployeeCoreData
//
//  Created by Salma on 12/9/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import CoreData

class EmployeeDeleteOps {
    
    private let coreDataManager = CoreDataManager.shared
    private let context = CoreDataManager.shared.mainContext
    static let shared = EmployeeDeleteOps()

    func deleteAllEmployees() {
        
        let fetchRequest: NSFetchRequest<Employee> = Employee.fetchRequest()
        let employees = coreDataManager.fetchObjects(fetchRequest: fetchRequest, context: context)
        if !employees.isEmpty {
        coreDataManager.batchDelete(objects: employees, context: context)
        }
    }
    
    func deleteById(with employeeID: String) {
        let fetchRequest: NSFetchRequest<Employee> = Employee.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "employeeID == %@", employeeID)
        let employees = coreDataManager.fetchObjects(fetchRequest: fetchRequest, context: context)
    }
}
