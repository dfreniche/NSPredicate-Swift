//: [Previous](@previous)
/*:

# Basic Compound Predicates
*/
/*:
- `AND, &&: Logical AND`
- `OR, ||: Logical OR`
- `NOT, !: Logical NOT`

*/
import Foundation

let sf = City(name: "San Francisco")
let nyc = City(name: "New York")

let groucho = Person(name: "Groucho", age: 50, city: nyc)
let chicco = Person(name: "Chicco", age: 61, city: nyc)
let harpo = Person(name: "Harpo", age: 45, city: sf)
let zeppo = Person(name: "Zeppo", age: 61, city: sf)

let people: NSArray = [groucho, chicco, harpo, zeppo]

/*:

All people with age 61 AND who lives in NYC 

*/

let pred = NSPredicate(format: "%K = %@ AND age = %d", "city.name", "New York", 61)
people.filtered(using: pred)


//: [Next](@next)
