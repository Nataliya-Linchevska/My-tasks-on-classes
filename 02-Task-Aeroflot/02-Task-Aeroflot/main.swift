//
//  main.swift
//  02-Task-Aeroflot
//
//  Created by user on 10.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation

/* Определить класс с именем Aeroflot, содержащую следующие поля: название пункта назначения; номер рейса; тип самолета.
 методы:
 ввод данных в массив из n элементов в типа Aeroflot;
 упорядочить массив по убыванию номера рейса;
 вывод номер рейсов и типов самолетов, вылетающих в пункт, название которого совпало с названием, введенным пользователем.
*/

print("1 - entering information")
print("2 - sort by number")
print("3 - find flight")

var yourChoice = readLine()!
switch yourChoice {
    case "1":
        print("your choice is 1")
    case "2":
        print("your choice is 2")
    case "3":
        print("your choice is 3")
    default:
        print("not good choice")
}


