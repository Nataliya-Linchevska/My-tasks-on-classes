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

//створюю масив типу Aeroflot
var aeroflot = [Aeroflot]()

//створюю і додаю до масиву кілька рейсів
var aero1 = Aeroflot(nameOfFlight: "Ukraine-Egypt", numberOfFlight: 723, typeOfAircraft: "charter")
aeroflot.append(aero1)
aero1 = Aeroflot(nameOfFlight: "Ukraine-Poland", numberOfFlight: 745, typeOfAircraft: "regular")
aeroflot.append(aero1)
aero1 = Aeroflot(nameOfFlight: "Slovakia-Egypt", numberOfFlight: 823, typeOfAircraft: "charter")
aeroflot.append(aero1)
aero1 = Aeroflot(nameOfFlight: "Ukraine-Slovakia", numberOfFlight: 711, typeOfAircraft: "regular")
aeroflot.append(aero1)
aero1 = Aeroflot(nameOfFlight: "Poland-Egypt", numberOfFlight: 983, typeOfAircraft: "charter")
aeroflot.append(aero1)

print("1 - entering information")
print("2 - sort by number")
print("3 - find flight")

var yourChoice = readLine()!
switch yourChoice {
    case "1":               // add information
        print("enter name of flight")
        var nameOfFlight = readLine()!
        print("enter number of flight")
        var numberOfFlight = Int(readLine()!)!
        print("enter type of aircraft")
        var typeOfAircraft = readLine()!
        var aero = Aeroflot(nameOfFlight: nameOfFlight, numberOfFlight: numberOfFlight, typeOfAircraft: typeOfAircraft)
        aeroflot.append(aero)
        print("You add: \(aero.information())")
    
    case "2":               // sort by number
        for i in 0..<aeroflot.count {
            aeroflot.sort(by: { (fly1, fly2) -> Bool in
                fly1.numberOfFlight < fly2.numberOfFlight
            })
            print(aeroflot[i].information())
        }
    
    case "3":               //find flight
        print("Write what you whant to find")
        var searchFly = readLine()!
        for i in 0..<aeroflot.count {
            if searchFly == aeroflot[i].nameOfFlight {
                print(aeroflot[i].information())
            }
            if searchFly == aeroflot[i].numberOfFlight.description {
                print(aeroflot[i].information())
            }
            if searchFly == aeroflot[i].typeOfAircraft {
                print(aeroflot[i].information())
            }
        }
    default:
        print("not good choice")
}


