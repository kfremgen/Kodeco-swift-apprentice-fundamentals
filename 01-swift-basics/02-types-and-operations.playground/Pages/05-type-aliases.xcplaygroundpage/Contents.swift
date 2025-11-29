//: [Previous](@previous)

import Foundation

/*: # Type aliases
 
 A useful feature of Swift is being able to create your own type which is an alias of another type.
 Type aliases define an alternative name for an existing type.
 You define type aliases with the typealias keyword.
 
 ```
 typealias AliasName = Type
 ```
 
 Type aliases are useful when you want to refer to an existing type by a name that’s contextually more appropriate.
 */

// This creates a typealias for the String type named Animal
// When the compiler sees the type Animal, it treats it as a String
typealias Animal =  String
// This declares a constant called myPet of type Animal
// Then it sets the value of the constant to a string literal
// The compiler will see this and treat myPet as a String type under the hood
let myPet: Animal = "dog"

// This creates a typealias for the tuple (x:Int,y:Int) type named Coordinates
// When the compiler sees the type Coordinates, it treats it as a (x:Int,y:Int)
typealias Coordinates = (x:Int,y:Int)
// This declares a constant called coordinates of type Coordinates
// Then it sets the value of the constant to a tuple
// The compiler will see this and treat coordinates as a tuple (x:Int,y:Int) type under the hood
let coordinates: Coordinates = (2,4)
// This declares a constant called x with a value of coordinates.x
// This accesses the individual element by its name
// The type is inferred to be an Int based on the value
let x = coordinates.x

//: [Next](@next)
