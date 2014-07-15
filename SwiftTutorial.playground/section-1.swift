
// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

let tutorialTeam: Int = 56  // Prefered without explicit typing, easier to read
let editorialTeam = 23
var totalTeam = tutorialTeam + editorialTeam

totalTeam += 1


let priceInferred = 19.99
let priceExplicit: Double = 19.99

let onSaleInferred = true
let onSaleExplicit: Bool = false

let nameInferred = "Swift"
let nameExplicit: String = "Swifty"

// If statements: bracers are required for even 1-line statements
// String interpolation allows you to substitute something in a string in Swift. Simply us the syntac: \(your expression)

if onSaleInferred {
    println("\(nameInferred) on sale for \(priceInferred)")
} else {
    println("\(nameInferred) at regular price: \(priceInferred)")
}


