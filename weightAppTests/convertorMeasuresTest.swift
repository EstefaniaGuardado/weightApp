//
//  convertorMeasures.swift
//  weightApp
//
//  Created by Estefania Guardado on 12.07.17.
//  Copyright © 2017 Estefania Guardado. All rights reserved.
//

import XCTest
@testable import weightApp

class convertorMeasuresTest: XCTestCase {
    
    let convertor = ConvertorMeasure()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testOneFeetIsEqualTo30CentimetersRounded() { //30.48cm
        let result = convertor.feetToCentimeters(quantity: 1.0)
        XCTAssertEqual(result, 30)
    }
    
    func testFourFeetIsEqualTo122CentimetersRounded() { //121.92cm
        let result = convertor.feetToCentimeters(quantity: 4.0)
        XCTAssertEqual(result, 122)
    }
    
    func test6Point5FeetIsEqualTo198CentimetersRounded() { //198.12cm
        let result = convertor.feetToCentimeters(quantity: 6.5)
        XCTAssertEqual(result, 198)
    }
    
    func testOnePoundIsEqualTo454GramsRounded() { //453.59gr
        let result = convertor.poundsToGrams(quantity: 1.0)
        XCTAssertEqual(result, 454)
    }
    
    func test4Point56PoundsIsEqualTo2068GramsRounded() { // 2068.4gr
        let result = convertor.poundsToGrams(quantity: 4.56)
        XCTAssertEqual(result, 2068)
    }
    
    func test100Point69PoundsIsEqualTo45672GramsRounded() { //45672.1gr
        let result = convertor.poundsToGrams(quantity:100.69)
        XCTAssertEqual(result, 45672)
    }
    
    func test98Point52PoundIsNotEqualTo44680Grams() { //44680gr
        let result = convertor.poundsToGrams(quantity: 98.52)
        XCTAssertNotEqual(result, 44680)
    }
    
    func test2MeterIsEqualTo100Centimeters() {
        let result = convertor.metersToCentimeters(quantity: 2.0)
        XCTAssertEqual(result, 200)
    }

    func test180CentimetersIsEqualTo2MetersRounded () { //1.8mt
        let result = convertor.centimetersToMeters(quantity: 180)
        XCTAssertEqual(result, 2)
    }
    
    func testOneKiloIsEqualTo1000Grams() {
        let result = convertor.kilosToGrams(quantity: 1.0)
        XCTAssertEqual(result, 1000)
    }
    
    func test100Point8KiloIsEqualTo100800Grams() {
        let result = convertor.kilosToGrams(quantity: 100.8)
        XCTAssertEqual(result, 100800)
    }
    
    func test1960GramIsEqualTo2KilosRounded() { //1.96kg
        let result = convertor.gramsToKilos(quantity: 1960)
        XCTAssertEqual(result, 2)
    }
}
