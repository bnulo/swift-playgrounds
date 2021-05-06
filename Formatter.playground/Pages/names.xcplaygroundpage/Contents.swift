//: [Previous](@previous)

import Foundation

// Names
let formatter = PersonNameComponentsFormatter()
var nameComponents = PersonNameComponents()
nameComponents.familyName = "Iwasaki"
nameComponents.givenName = "Akia"
nameComponents.nickname = "Akichan"
// Full name
formatter.string(from: nameComponents)

// Short name: Respects User Prefrences
formatter.style = .short
formatter.string(from: nameComponents)

// MARK: - Abbreviated name: Monogram
formatter.style = .abbreviated
let monogram = formatter.string(from: nameComponents)
if monogram.count <= 2 {
    //use monogram
} else {
    // use icon
}



//: [Next](@next)
