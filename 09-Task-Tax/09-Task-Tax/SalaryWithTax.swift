//
//  SalaryWithTax.swift
//  09-Task-Tax
//
//  Created by user on 14.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation

/*Число – подоходный налог в процентах
 Вычислить, сколько денег получит работ- ник, если вычтут подоходный налог
*/
class SalaryWithTax: Salary {
    var taxPercentage: Int
    
    override init() {
        taxPercentage = 0
        super.init()
        hours = 0
        payPerHour = 0
    }
    
    init(taxPercentage: Int, hours: Int, payPerHour: Double) {
        self.taxPercentage = taxPercentage
        super.init()
        self.hours = hours
        self.payPerHour = payPerHour
    }
    
    func salaryWithTax() -> Double {
        return super.salary() - (super.salary() * Double(taxPercentage) / 100)
    }
    
    override func information() -> String {
        return super.information() + ", minus tax percent: " + taxPercentage.description + "%, salary without tax: " + String(format: "%.2f", salaryWithTax()) + " grn"
    }
    
}

