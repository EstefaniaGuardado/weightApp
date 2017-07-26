//
//  TargetDate.swift
//  weightApp
//
//  Created by Estefania Guardado on 25.07.17.
//  Copyright © 2017 Estefania Guardado. All rights reserved.
//

import Foundation

class CalculateTargetDate {
    
    let dateHandler = DatesHandler()
    let weightInGramsToLosePerWeek: Float = 0.453
    
    func kilosToWeeks(quantity: Float) -> Float {
        let weeks = quantity / weightInGramsToLosePerWeek
        return weeks.roundTo(places: 1)
    }
    
    func weeksToDays(quantity: Float) -> Int {
        var days = quantity * 7
        days = days.roundTo(places: 0)
        return Int(days)
    }
    
    func getTargetDate(currentDate: Date, kilos: Float) -> Date {
        let resultWeeks = kilosToWeeks(quantity: kilos)
        let totalDays = weeksToDays(quantity: resultWeeks)
        let targetDate = dateHandler.addDaysToDate(date: currentDate, days: totalDays)
        
        return targetDate
    }
}
