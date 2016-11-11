//
//  Money.swift
//  04-Task-Money
//
//  Created by user on 11.11.16.
//  Copyright © 2016 user. All rights reserved.
//
/*Задание: создать класс с двумя полями: номинал купюры (1, 2, 5, 10 и т.д.) и  количество купюр и тремя методами:
 - конструктор для инициализации объекта;
 - функция формирования строки с информацией об объекте;
 - функция вычисления суммы купюр.*/

import Foundation

class Money {
    var denomination: Int
    var howMuch: Int
    init(denomination: Int, howMuch: Int) {
        self.denomination = denomination
        self.howMuch = howMuch
    }
    func sum() -> Int {
        return denomination * howMuch
    }
    func information() -> String {
        return "номинал купюры: " + denomination.description + ", количество купюр: " + howMuch.description + ", Общая стоимость: " + sum().description
    }
}
