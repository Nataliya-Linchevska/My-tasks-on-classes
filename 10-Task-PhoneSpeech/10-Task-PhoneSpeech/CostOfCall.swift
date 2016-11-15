//
//  CostOfCall.swift
//  10-Task-PhoneSpeech
//
//  Created by user on 14.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation
/* Продолжительность телефонного разго- вора в минутах
 Стоимость одной минуты разговора
 Вычислить общую стои- мость разговора */

class CostOfCall {
    var timeOfSpeech: Int
    var costOneMinute: Double
    
    init() {
        timeOfSpeech = 0
        costOneMinute = 0
    }
    
    init(timeOfSpeech: Int, costOneMinute: Double) {
        self.timeOfSpeech = timeOfSpeech
        self.costOneMinute = costOneMinute
    }
    
    func costOfCall() -> Double {
        return Double(timeOfSpeech) * costOneMinute
    }
    
    func information() -> String {
        return "time of speech: " + timeOfSpeech.description + " minutes, cost one minute: " + String(format: "%.2f",  costOneMinute) + " grn, cost of call " + String(format: "%.2f",  costOfCall()) + " grn"
    }
    
    deinit {
        print("Deinit \(information())")
    }
}
