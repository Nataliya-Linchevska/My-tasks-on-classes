//
//  Goods.swift
//  08-Task-Shop
//
//  Created by user on 14.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation

/*Цена товара
Количество единиц товара
Вычислить общую стои- мость товара */

class Goods {
    var count: Int
    var priceOfOne: Double
    var name: String
    
    init() {
        count = 0
        priceOfOne = 0
        name = ""
    }
    
    init(name: String, count: Int, priceOfOne: Double) {
        self.count = count
        self.priceOfOne = priceOfOne
        self.name = name
    }
    
    func totalPrice() -> Double {
        return Double(count) * priceOfOne
    }
    
    func information() -> String {
        return "name: \(name), count goods: \(count.description),  price of one: \(String(format: "%.2f", priceOfOne)), total price: \(String(format: "%.2f", totalPrice()))"
    }
}
