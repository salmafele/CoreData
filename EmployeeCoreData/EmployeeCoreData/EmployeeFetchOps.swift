//
//  EmployeeFetchOps.swift
//  EmployeeCoreData
//
//  Created by Salma on 12/9/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import UIKit
import CoreData

class EmployeeFetchOps {
    
    private let coreDataManager = CoreDataManager.shared
    private let context = CoreDataManager.shared.mainContext
    static let shared = EmployeeFetchOps()
    
    // make it Singleton
    private init() {}
    
    func getAllEmployees() -> [Employee] {
        let fetchRequest: NSFetchRequest<Employee> = Employee.fetchRequest()
        return coreDataManager.fetchObjects(fetchRequest: fetchRequest, context: context)
    }
    
    func getEmployeeBy(lastName: String) -> [Employee] {
        let fetchRequest: NSFetchRequest<Employee> = Employee.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "lastName=%@", lastName)
        
        return coreDataManager.fetchObjects(fetchRequest: fetchRequest, context: context)

    }
}

