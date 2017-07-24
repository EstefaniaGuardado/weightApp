//
//  ConvertorMeasures.swift
//  weightApp
//
//  Created by Estefania Guardado on 12.07.17.
//  Copyright © 2017 Estefania Guardado. All rights reserved.
//

import Foundation

extension Float {
    func roundTo(places:Int) -> Float {
        let divisor = pow(10.0, Float(places))
        return (self * divisor).rounded() / divisor
    }
}

class ConvertorMeasure{

    func feetToCentimeters(quantity: Float, decimals: Int) -> Float {
        let feets = quantity * 30.48
        return feets.roundTo(places: decimals)
    }
    
    func centimetersToFeets(quantity: Float, decimals: Int) -> Float {
        let centimeters = quantity * 0.0328084
        return centimeters.roundTo(places: decimals)
    }
    
    func poundsToKilograms(quantity: Float, decimals: Int) -> Float{
        let pounds = quantity * 0.453592
        return pounds.roundTo(places: decimals)
    }
    
    func kilogramsToPounds(quantity: Float, decimals: Int) -> Float {
        let kilogram = quantity * 2.20462
        return kilogram.roundTo(places: decimals)
    }
    
    func metersToCentimeters(quantity: Float, decimals: Int) -> Float {
        let meters = quantity * 100.0
        return meters.roundTo(places: decimals)
    }
}
