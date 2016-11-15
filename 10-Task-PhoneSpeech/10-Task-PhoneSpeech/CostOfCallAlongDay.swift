//
//  CostOfCallAlongDay.swift
//  10-Task-PhoneSpeech
//
//  Created by user on 14.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation
/* Количество разговоров по телефону за сутки
 Общая стоимость разговоров за сутки */

class CostOfCallAlongDay: CostOfCall {
    var timeOfSpeechAlongDay: Double
    
    override init() {
        timeOfSpeechAlongDay = 0
        super.init()
        timeOfSpeech = 0
        costOneMinute = 0
    }
    
    init(timeOfSpeech: Int, costOneMinute: Double, timeOfSpeechAlongDay: Double) {
        self.timeOfSpeechAlongDay = timeOfSpeechAlongDay
        super.init()
        self.timeOfSpeech = timeOfSpeech
        self.costOneMinute = costOneMinute
    }
    
    func costOfCallAlongDay() -> Double {
        return timeOfSpeechAlongDay * costOneMinute
    }
    
    override func information() -> String {
        return super.information() + ", time of speech along day: " + String(format: "%.2f", timeOfSpeechAlongDay) + " minutes, Cost of call along day: " + String(format: "%.2f", costOfCallAlongDay()) + " grn"
    }
    
    deinit {
        print("Deinit \(information())")
    }
}



