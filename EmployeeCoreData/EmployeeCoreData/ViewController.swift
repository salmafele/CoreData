//
//  ViewController.swift
//  EmployeeCoreData
//
//  Created by Salma on 12/9/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let employee1 = EmployeeModel()
        employee1.firstName = "Austin"
        employee1.lastName = "Powers"
        employee1.birthYear = "1890"
        employee1.employeeID = "A001"
        
        let employee2 = EmployeeModel()
        employee2.firstName = "James"
        employee2.lastName = "Bond"
        employee2.birthYear = "1985"
        employee2.employeeID = "A013"
        
        let employee3 = EmployeeModel()
        employee3.firstName = "Captain"
        employee3.lastName = "Hook"
        employee3.birthYear = "1992"
        employee3.employeeID = "B032"
        
        let employee4 = EmployeeModel()
        employee4.firstName = "Jessica"
        employee4.lastName = "Alba"
        employee4.birthYear = "1997"
        employee4.employeeID = "C014"

        // save object
        EmployeeSavedOps.shared.saveEmployee(employeeObject: employee1)
        EmployeeSavedOps.shared.saveEmployee(employeeObject: employee2)
        EmployeeSavedOps.shared.saveEmployee(employeeObject: employee3)
        EmployeeSavedOps.shared.saveEmployee(employeeObject: employee4)

        // fetch
        let employees = EmployeeFetchOps.shared.getAllEmployees()
        print(employees, employees.count)

        let lastNames = EmployeeFetchOps.shared.getEmployeeBy(lastName: employee1.lastName ?? "")
        print(lastNames.count)
        let lastNames1 = EmployeeFetchOps.shared.getEmployeeBy(lastName: employee2.lastName ?? "")
        print(lastNames1.count)
        let lastNames2 = EmployeeFetchOps.shared.getEmployeeBy(lastName: employee3.lastName ?? "")
        print(lastNames2.count)
        let lastNames3 = EmployeeFetchOps.shared.getEmployeeBy(lastName: employee3.lastName ?? "")
        print(lastNames3.count)

//        EmployeeDeleteOps.shared.deleteAllEmployees()
//        print(employees.count)

    }
}


