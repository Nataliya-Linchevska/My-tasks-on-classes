//
//  Data.swift
//  05-Task-Data
//
//  Created by user on 11.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation
class Data {
    var day: Int
    var month: Int
    var year: Int
    
    init() {
        day = 0
        month = 0
        year = 0
    }
    
    init(day: Int, month: Int, year: Int) {
        self.day = day
        self.month = month
        self.year = year
    }
    
    deinit {
        print("Deinit \(day) \(month) \(year) data")
    }
    
    // опис
    func information () -> String {
        return day.description + "." + month.description + "." + year.description
    }
    
    //додати 5 днів
    func add5Days() -> String {
        if day < 25 {
            day += 5
        } else {
            day += 5
            day -= 30
            month += 1
            if month > 12 {
                month = 1
                year += 1
            }
        }
        return "Нова дата " + day.description + "." + month.description + "." + year.description
    }
    
    // високосний рік
    func leapYear() -> String {
        if year % 4 == 0 {
        return day.description + "." + month.description + "." + year.description + " - високосний рік "
        } else {
        return day.description + "." + month.description + "." + year.description + " - не високосний рік "
        }
    }
}
