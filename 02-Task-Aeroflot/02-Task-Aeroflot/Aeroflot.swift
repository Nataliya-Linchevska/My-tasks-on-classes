//
//  Aeroflot.swift
//  02-Task-Aeroflot
//
//  Created by user on 10.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation

class Aeroflot {
    var nameOfFlight: String    //название пункта назначения
    var numberOfFlight: Int     //номер рейса
    var typeOfAircraft: String  //тип самолета
    
    init(nameOfFlight: String, numberOfFlight: Int, typeOfAircraft: String) {
        self.nameOfFlight = nameOfFlight
        self.numberOfFlight = numberOfFlight
        self.typeOfAircraft = typeOfAircraft
    }
    
    func information() -> String {
        return nameOfFlight + " " + numberOfFlight.description + " " + typeOfAircraft
    }
}
