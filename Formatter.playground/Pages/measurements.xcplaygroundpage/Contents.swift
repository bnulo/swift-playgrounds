//: [Previous](@previous)

import Foundation

// Measurements
// MARK:- Temperature
let formatter = MeasurementFormatter()
let temperature = Measurement<UnitTemperature>(value: 16, unit: .celsius)
formatter.numberFormatter.maximumFractionDigits = 0
formatter.string(from: temperature)

// MARK:- Speed
let speed = Measurement<UnitSpeed>(value: 14, unit: .kilometersPerHour)
formatter.string(from: speed)

// MARK:- Pressure
let pressure = Measurement<UnitPressure>(value: 1.01885, unit: .bars)
formatter.string(from: pressure)

//: [Next](@next)

