//
//  main.swift
//  07-Task-Toyota
//
//  Created by user on 12.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation
/*Задание: создать класс с полями, указанными в индивидуальном зада- нии (табл. 11.2, столб 2).
 Реализовать в классе методы:
 - конструктор по умолчанию;
 - конструктор перезагрузки с параметрами;
 - деструктор для освобождения памяти (с сообщением об уничтожении
 объекта);
 - функции обработки данных (1 и 2), указанные в индивидуальном задании
 (табл. 11.2, столбцы 3 и 4);
 - функцию формирования строки информации об объекте.
 Создать проект для демонстрации работы: сформировать объекты со зна- чениями-константами и с введенными значениями полей объекта из компонен- тов Edit. Выводить результаты в компонент Memo.
 26
 Товар: наименова- ние, цена в гривне, изготовитель
 Пересчитать цену товара в долларах
 Увеличить цену товара в долларах, в 3 раза, если название товара содержит слово «Toyota».*/

var car = Product(name: "Zaporozhets", price: 25_000, manufacturer: "Ukraine")
print(car.information())
print(car.dollars())
print("")

car = Product(name: "Shkoda Oktavia", price: 250_000, manufacturer: "Japan")
print(car.information())
print(car.dollars())
print("")

car = Product(name: "Toyota Prius", price: 250_000, manufacturer: "Japan")
print(car.information())
print(car.dollars())



