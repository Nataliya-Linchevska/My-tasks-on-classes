//
//  Phone.swift
//  11-Task-MobilePhone
//
//  Created by user on 15.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation
/* Мобильный телефон: - марка;
 - цена;
 - объем памяти.
 Q = объем памяти / цена */

class Phone {
    var brand: String
    var price: Double
    var memory: Int
    
    init(brand: String, price: Double, memory: Int) {
        self.brand = brand
        self.memory = memory
        self.price = price
    }
    
}
