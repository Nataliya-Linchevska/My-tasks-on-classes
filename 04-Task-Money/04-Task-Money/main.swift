//
//  main.swift
//  04-Task-Money
//
//  Created by user on 11.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation

/*Задание: создать класс с двумя полями: номинал купюры (1, 2, 5, 10 и т.д.) и  количество купюр и тремя методами:
 - конструктор для инициализации объекта;
 - функция формирования строки с информацией об объекте;
 - функция вычисления суммы купюр.*/


var money1 = Money(denomination: 5, howMuch: 10)
print(money1.information())
money1 = Money(denomination: 20, howMuch: 100)
print(money1.information())
