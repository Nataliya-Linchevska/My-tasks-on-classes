//
//  main.swift
//  10-Task-PhoneSpeech
//
//  Created by user on 14.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation

/*Задание: Для класса, созданного в предыдущем задании (по вариантам табл. 10.1) создать класс-потомок с дополнительным полем, указанным в индивидуальном задании (табл. 11.4, столб 2).
 Реализовать в классе-потомке методы:
 - конструктор;
 - функцию обработки данных, указанную в индивидуальном задании (табл
 11.4, столб 3).
 Создать проект для демонстрации работы: ввод и вывод информации об
 объектах: классе-родителе и классе-потомке.
 ---18---
 Количество разговоров по телефону за сутки
 Общая стоимость разговоров за сутки
 ---18---
 Продолжительность телефонного разго- вора в минутах
 Стоимость одной минуты разговора
 Вычислить общую стои- мость разговора*/

var call = CostOfCall(timeOfSpeech: 20, costOneMinute: 2.3)
print(call.information())
print("")

call = CostOfCallAlongDay(timeOfSpeech: 23, costOneMinute: 2.25, timeOfSpeechAlongDay: 125)
print(call.information())
print("")

// Введення з клавіатури
print("time Of Speech:")
var timeOfSpeech = Int(readLine()!)!

print("cost One Minute:")
var costOneMinute = Double(readLine()!)!

print("time Of Speech Along Day:")
var timeOfSpeechAlongDay = Double(readLine()!)!

call = CostOfCallAlongDay(timeOfSpeech: timeOfSpeech, costOneMinute: costOneMinute, timeOfSpeechAlongDay: timeOfSpeechAlongDay)
print("")
print(call.information())














