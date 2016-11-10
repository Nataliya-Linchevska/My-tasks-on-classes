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
    for _ in 0..<10 {
        randomProgress.append(Int(arc4random_uniform(100)+1))
    }
    return randomProgress
}

// Створюю масив студентів
var arrayOfStudents = [Student]()

// Створюю самих студентів і додаю до масиву
var student1 = Student(name: "Petrov I.N.", group: 1, progress: progress())
arrayOfStudents.append(student1)
var student2 = Student(name: "Ivanov K.T.", group: 2, progress: progress())
arrayOfStudents.append(student2)
var student3 = Student(name: "Sidorov P.N.", group: 3, progress: progress())
arrayOfStudents.append(student3)
var student4 = Student(name: "Smirnov V.K.", group: 2, progress: progress())
arrayOfStudents.append(student4)
var student5 = Student(name: "Orlov P.B.", group: 1, progress: progress())
arrayOfStudents.append(student5)
var student6 = Student(name: "Afanasiev D.K.", group: 3, progress: progress())
arrayOfStudents.append(student6)

print("Write 1 - show students ")
print("Write 2 - sort students by number of group ")
print("Write 3 - show students only if average rating above 67")

var whatYouWantToDo = readLine()!
switch whatYouWantToDo {
    case "1":                       // Виводжу інформацію про студентів
        for i in 0..<arrayOfStudents.count {
            print(arrayOfStudents[i].information())
        }
    case "2":                       // Сортую по номеру групи
        for i in 0..<arrayOfStudents.count {
            arrayOfStudents.sort(by: { (student1, student2) -> Bool in
                student1.group < student2.group
            })
            print(arrayOfStudents[i].information())
        }
    case "3":
        print("Your choice 3")
    default:
        print("Not good choice!")
    
}












