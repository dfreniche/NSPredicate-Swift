//: [Previous](@previous)

/*:
# Relational operators
*/
/*:
- ANY, SOME: any of the elements in the following expression. `ANY children.age < 18`
- ALL: all of the elements in the following expression. `ALL children.age < 18`
- NONE: none of the elements in the following expression. `NONE children.age < 18`. This is logically equivalent to NOT (ANY ...)

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
## IN

Equivalent to an SQL IN operation, the left-hand side must appear in the collection specified by the right-hand side. For example, name IN { 'Ben', 'Melissa', 'Nick' }


*/
let pred = NSPredicate(format: "%K in {%@, %@}", "name", "Groucho", "Harpo")
people.filtered(using: pred)


//: [Next](@next)
