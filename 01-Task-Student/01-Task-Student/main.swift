//
//  main.swift
//  01-Task-Student
//
//  Created by user on 10.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation

/*1.	Определить класс с именем Student, содержащую следующие поля: фамилия и инициалы; номер группы; успеваемость – массив из 10 элементов.
 методы:
 ввод данных в массив из n элементов в типа Student;
 упорядочить по возрастанию номера в группе;
 вывод студентов и номеров групп для студентов, если средний балл студента больше 67.
*/


// Роблю функцію, яка рандомно заповнює самив успішності
func progress() -> [Int] {
    var randomProgress = [Int]()
    for _ in 0..<9 {
        randomProgress.append(Int(arc4random_uniform(100)+1))
    }
    return randomProgress
}

//Створюю студента
var student1 = Student(name: "Petrov I.N.", group: 2, progress: progress())
print(student1.progress)
