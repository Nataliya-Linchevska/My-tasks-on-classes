//
//  main.swift
//  03-Task-Worker
//
//  Created by user on 10.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation
/* 1.	Определить класс с именем Worker, содержащую следующие поля: фамилия и инициалы работника; название занимаемой должности; год поступления на работу.
 методы:
 ввод данных в массив из n элементов в типа Worker;
 упорядочить по алфавиту фамилии работников;
 вывод работников, чей стаж работы в фирме превышает значение, введенное пользователем.
*/


var arrayOfWorkers = [Worker]()
var worker = Worker(name: "Petrov I.K.", job: "seler", yearStartJob: 1995)
arrayOfWorkers.append(worker)
worker = Worker(name: "Ivanov N.G.", job: "manager", yearStartJob: 2015)
arrayOfWorkers.append(worker)
worker = Worker(name: "Galushka M.N.", job: "trener", yearStartJob: 2008)
arrayOfWorkers.append(worker)
worker = Worker(name: "Aist D.K.", job: "teacher", yearStartJob: 2001)
arrayOfWorkers.append(worker)
worker = Worker(name: "Kaban U.A.", job: "actor", yearStartJob: 2014)
arrayOfWorkers.append(worker)

print("1 - edit new worker, 2 - sort by surname, 3 - show oldest worker than ...")
var yourChoise = readLine()!
switch yourChoise {
    case "1":
        print("write name of new worker")
        var newName = readLine()!
        print("write job of new worker")
        var newJob = readLine()!
        print("write year start job of new worker")
        var newYear = Int(readLine()!)!
        var oneWorker = Worker(name: newName, job: newJob, yearStartJob: newYear)
        arrayOfWorkers.append(oneWorker)
        for i in 0..<arrayOfWorkers.count{
            print(arrayOfWorkers[i].information())
        }
    case "2":
        for i in 0..<arrayOfWorkers.count{
            arrayOfWorkers.sort(by: { (name1, name2) -> Bool in
                name1.name < name2.name
            })
            print(arrayOfWorkers[i].information())
        }
    case "3":
        print("Write age, show oldest worker than ...")
        var someAge = Int(readLine()!)!
        for i in 0..<arrayOfWorkers.count{
            if arrayOfWorkers[i].yearStartJob > someAge {
                print(arrayOfWorkers[i].information())
            }
    }
    default:
        print("not good choise")
}





