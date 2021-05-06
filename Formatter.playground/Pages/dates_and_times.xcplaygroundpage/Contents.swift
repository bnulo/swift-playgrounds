//: [Previous](@previous)

import Foundation

// Date with Day/Month/Year and Time
var dateFormatter = DateFormatter()
dateFormatter.dateStyle = .medium
dateFormatter.timeStyle = .short
dateFormatter.string(from: Date())
// MARK: -
// Day of Week + Date + Month
dateFormatter.setLocalizedDateFormatFromTemplate("MMMMdEEEE")
dateFormatter.string(from: Date())

// Abbreviated Day of week
dateFormatter.setLocalizedDateFormatFromTemplate("cccc")
dateFormatter.string(from: Date())
dateFormatter.setLocalizedDateFormatFromTemplate("ccccc")
dateFormatter.string(from: Date())
dateFormatter.setLocalizedDateFormatFromTemplate("cccccc")
dateFormatter.string(from: Date())
dateFormatter.setLocalizedDateFormatFromTemplate("ccccccc")
dateFormatter.string(from: Date())

/*
 Date Field Symbol Table:
 
https://www.unicode.org/reports/tr35/tr35-dates.html#Date_Field_Symbol_Table
 */

// MARK: -
// Order does not matter:
dateFormatter.setLocalizedDateFormatFromTemplate("dMMMEEEE")
dateFormatter.string(from: Date())
dateFormatter.setLocalizedDateFormatFromTemplate("MMMdEEEE")
dateFormatter.string(from: Date())
dateFormatter.setLocalizedDateFormatFromTemplate("EEEEMMMd")
dateFormatter.string(from: Date())

// MARK: - Templates
// ✅ specify the fields you're interested in and their lengths;
// localizes correctly across languages and locales.
dateFormatter.setLocalizedDateFormatFromTemplate("dMMM")
dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "dMMM", options: 0, locale: nil)
dateFormatter.string(from: Date())

// ❌ will be interpreted literally across languages and locales,
// leading to nonsensical outputs.
dateFormatter.dateFormat = "dMMM"
dateFormatter.string(from: Date())

// MARK: - Date and Time Components such as those used in durations
let formatter = DateComponentsFormatter()
formatter.unitsStyle = .abbreviated
let components = DateComponents(hour: 2, minute: 26)
formatter.string(from: components)

// Date and Time Intervals
let startDate = Date()
let endDate = Date()
let diFormatter = DateIntervalFormatter()
diFormatter.dateTemplate = "dMMM"
diFormatter.string(from: startDate, to: endDate)

// Relative dates and times
let rdtFormatter = RelativeDateTimeFormatter()
rdtFormatter.dateTimeStyle = .named
rdtFormatter.localizedString(from: DateComponents(day: -1))
rdtFormatter.localizedString(from: DateComponents(day: -2))
rdtFormatter.localizedString(from: DateComponents(day: 0))
rdtFormatter.localizedString(from: DateComponents(day: 1))
rdtFormatter.localizedString(from: DateComponents(day: 2))
rdtFormatter.localizedString(from: DateComponents(day: 7))
rdtFormatter.localizedString(from: DateComponents(day: 8))

//: [Next](@next)
