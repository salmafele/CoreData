//
//  EmployeeUpdateOps.swift
//  EmployeeCoreData
//
//  Created by Salma on 12/9/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import UIKit
import CoreData

class EmployeeUpdateOps {
    
    private let coreDataManager = CoreDataManager.shared
    private let context = CoreDataManager.shared.mainContext
    static let shared = EmployeeUpdateOps()
    
    
    func updateYear(birthYear: String) {
        
        let fetchRequest: NSFetchRequest<Employee> = Employee.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "birthYear=%@", birthYear)
        let employee = EmployeeFetchOps.shared.getEmployeeBy(lastName: "Bond").filter {
            $0.birthYear == birthYear
            
        }.first
        employee?.birthYear = "1985"
        coreDataManager.saveContext(context: context)
        
    }

}
