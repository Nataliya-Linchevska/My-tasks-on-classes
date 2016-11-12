//
//  Product.swift
//  07-Task-Toyota
//
//  Created by user on 12.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation

class Product {
    var name: String
    var price: Int
    var manufacturer: String
    
    init() {
        name = ""
        price = 0
        manufacturer = ""
    }
    
    init(name: String, price: Int, manufacturer: String) {
        self.name = name
        self.price = price
        self.manufacturer = manufacturer
    }
    
    deinit {
        print("Deinit \(name), price \(price.description) grn,  manufacturer \(manufacturer)")
    }
    
    func information() -> String {
        return "\(name), price \(price.description) grn,  manufacturer \(manufacturer)"
    }
    
    func dollars() -> String {
        var dollars = Double(price) / 25
        if name.contains("Toyota") {
            dollars *= 3
        }
        return "\(name), price \(String(format: "%.2f", dollars))$,  manufacturer \(manufacturer)"
    }
}















