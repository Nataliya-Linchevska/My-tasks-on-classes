//
//  Salary.swift
//  09-Task-Tax
//
//  Created by user on 14.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation
/*Количество часов работы
 Тариф оплаты за час работы
 Общая стоимость работы*/

class Salary {
    var hours: Int
    var payPerHour: Double
    
    init() {
        hours = 0
        payPerHour = 0
    }
    
    init(hours: Int, payPerHour: Double) {
        self.hours = hours
        self.payPerHour = payPerHour
    }
    
    func salary() -> Double {
        return Double(hours) * payPerHour
    }
    
    func information() -> String {
        return "hours: " + hours.description + ", pay per hour: " + String(format: "%.2f",  payPerHour) + " grn, salary: " + String(format: "%.2f",  salary()) + " grn"
    }
}
