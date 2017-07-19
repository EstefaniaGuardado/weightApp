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

    func feetToCentimeters(quantity: Float) -> Float {
        let feets = quantity * 30.48
        return feets
    }
    
    func centimetersToFeets(quantity: Float) -> Float {
        let centimeters = quantity * 0.0328084
        return centimeters.roundTo(places: 4)
    }
    
    func poundsToKilograms(quantity: Float) -> Float{
        let pounds = quantity * 0.453592
        return pounds.roundTo(places: 4)
    }
    
    func kilogramsToPounds(quantity: Float) -> Float {
        let kilogram = quantity * 2.20462
        return kilogram.roundTo(places:4)
    }
}
