//
//  Book.swift
//  06-Task-Book
//
//  Created by user on 12.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation
/*Книга: название, количество страниц, цена
 Вычислить среднюю стоимость одной страницы
 Увеличить цену книги в два раза, если название начинается со слова «Программирование»*/

//формат виведення Double в короткому вигляді
//print(String(format: "a float number: %.5f", 1.0321))

class Book {
    var name: String
    var pageCount: Int
    var price: Double
    
    init() {
        name = ""
        pageCount = 0
        price = 0
    }
    
    init(name: String, pageCount: Int, price: Double) {
        self.name = name
        self.pageCount = pageCount
        // Увеличить цену книги в два раза, если название начинается со слова «Программирование»
        if name.hasPrefix("Программирование") {
            self.price = 2 * price
        } else {
            self.price = price
        }
    }
    
    deinit {
        print("Deinit \(name) \(pageCount.description) \(price.description) book")
    }
    
    func  information() -> String {
        return name + ", " + pageCount.description + " сторінок, " + price.description + " грн"
    }
    
    // Вычислить среднюю стоимость одной страницы
    func averageCost() -> String {
        let priceOnePage = price / Double(pageCount)
        return "Одна сторінка коштує " + String(format: "%.2f", priceOnePage) + " грн."
    }
}








