//
//  main.swift
//  06-Task-Book
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
 13
 Книга: название, количество страниц, цена
 Вычислить среднюю стоимость одной страницы
 Увеличить цену книги в два раза, если название начинается со слова «Программирование»*/

var book = Book(name: "Колобок", pageCount: 250, price: 100)
print(book.information())
print(book.averageCost())
print("")

book = Book(name: "Программирование на Swift", pageCount: 250, price: 100)
print(book.information())
print(book.averageCost())

