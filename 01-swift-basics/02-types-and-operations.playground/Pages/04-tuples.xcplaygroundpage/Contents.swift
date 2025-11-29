//: [Previous](@previous)

import Foundation

/*: # Tuples
 
 Sometimes data comes in pairs or triplets.
 An example is a pair of (x, y) coordinates on a 2D grid.
 Similarly, a set of coordinates on a 3D grid is comprised of an x-value, a y-value and a z-value.
 In Swift, you can represent such related data in a straightforward way by using a tuple.
 
 Tuples group multiple values into a single compound value.
 The values within a tuple can be of any type and don’t have to be of the same type as each other.
 
 The tuple type is made up of the types of the values within the tuple separated by commas and surrounded by parentheses.
 
 ```
 (TypeOne,TypeTwo,...)
 ```
 
 The code for creating the tuple is much the same, with each value separated by commas and surrounded by parentheses.
 
 ```
 (valueOne,valueTwo,..)
 ```
 
 You can create tuples from any permutation of types, and they can contain as many different types as you like.
 There’s nothing stopping you from having a tuple of type (Int, Int, Int), or (String, Bool), or indeed any other permutation you require.
 */

// This declares a constant called coordinatesInt of type (Int,Int)
// Then it sets the value of the constant to a tuple of (2,3)
let coordinatesInt: (Int, Int) = (2,3)

// This declares a constant called inferredCoordinates with a value of (2,3)
// The type is inferred to be a tuple of (Int,Int) based on the value
let inferredCoordinates = (2,3)

// This declares a constant called coordinatesDouble with a value of (2.1,3.5)
// The type is inferred to be a tuple of (Double,Double) based on the value
let coordinatesDouble = (2.1,3.5)

// This declares a constant called coordinatesMixed with a value of (2.1,3)
// The type is inferred to be a tuple of (Double,Int) based on the value
let coordinatesMixed = (2.1,3)


/*: ## Accessing tuple values
 
 You can access the individual element values in a tuple by position using index numbers starting at zero:
 
 ```
 tuple.index
 ```
 
 Starting with zero is a common convention in computer programming called zero indexing.
 You’ll see this again in Chapter 7, “Arrays, Dictionaries & Sets.”
 */

// This declares a constant called x1 with a value of inferredCoordinates.0
// This accesses the individual element in the tuple at index 0
// The type is inferred to be an Int based on the value
let x1 = inferredCoordinates.0

// This declares a constant called y1 with a value of inferredCoordinates.1
// This accesses the individual element in the tuple at index 1
// The type is inferred to be an Int based on the value
let y1 = inferredCoordinates.1

/* ## Naming tuples
 
 In the previous example, it may not be immediately apparent that the first value, at index 0, is the x-coordinate, and the second value, at index 1, is the y-coordinate.
 Fortunately, Swift allows you to name the individual parts of a tuple, and you can be explicit about what each part represents.
 
 You can name the individual elements in a tuple when the tuple is defined.
 
 ```
 var/let name: (name:Type,..) = (value,..)
 var/let name = (name:value,..)
 ```
 
 The name of the individual elements in the tuple is attached to the elements type.
 Therefore a tuple , `(x:2,y;3)`, will have a type of `(x:Int, y:Int)`.
 
 If you name the elements in a tuple, you can use the element names to access the values of those elements.
 */

// This declares a constant called coordinatesNamed of type (x:Int,Y:Int)
// Then it sets the value of the constant to a tuple of (2,3)
let coordinatesNamed:(x:Int,y:Int) = (2,3)

// This declares a constant called inferredCoordinatesNamed with a value of (x:2,y:3)
// The type is inferred to be a tuple of (x:Int,y:Int) based on the value
let inferredCoordinatesNamed = (x: 2,y:3)

// This declares a constant called x2 with a value of inferredCoordinatesNamed.x
// This accesses the individual element by its name
// The type is inferred to be an Int based on the value
let x2 = inferredCoordinatesNamed.x

// This declares a constant called y2 with a value of inferredCoordinatesNamed.y
// This accesses the individual element by its name
// The type is inferred to be an Int based on the value
let y2 = inferredCoordinatesNamed.y

/*: ## Decomposing tuples
 
 If you want to access multiple parts of the tuple at the same time instead of individually, you can use tuple decomposing syntax.
 You can decompose a tuple’s contents into separate constants or variables, which you can then access as usual.
 
 ```
 var (var1,var2,..) = (value,value2,..)
 ```
 
 It is equivalent to the following code:
 
 ```
 let tuple = (value1,value2,..)
 var var1 = tuple.0
 var var2 = tuple.1
 ```
 
 If you only need some of the tuple’s values, ignore parts of the tuple with an underscore (_) when you decompose the tuple.
 
 ```
 var/let (_,var2,..) = (value,value2,..)
 ```
 
 Note: You’ll find that you can use the underscore (also called the wildcard operator) throughout Swift to ignore a value.
 */

// This declares a constant called coordinates3D with a value of (x:2,y:3,z:1)
// The type is inferred to be a tuple of (x:Int,y:Int,z:Int) based on the value
let coordinates3D = (x:2,y:3,z:1)

// This decomposes the tuple, coordinates3D, into three constants named x3,y3, and z3
// This will assign each constant in order to its corresponding element in the tuple based on position
let (x3,y3,z3) = coordinates3D

// This decomposes the tuple, coordinates3D, into two constants named x4 and y4
// This will assign each constant in order to its corresponding element in the tuple based on position
// The third element will be ignored since the underscore is in that positon when decomposing
let (x4,y4,_) = coordinates3D

//: # Exercises

/*: ### Exercise 1
 
 Declare a constant tuple that contains three Int values followed by a Double.
 Use this to represent a date (month, day, year) followed by an average temperature for that date.
 */

let date = (month: 12,day:25, year: 2025, averageTemp: 32.5)

/*: ### Exercise 2
 
 In one line, read the day and average temperature values into two constants.
 You’ll need to employ the underscore to ignore the month and year
 */

let (_,day,_,averageTemp) = date

/*: ### Exercise 3
 
 Up until now, you’ve only seen constant tuples. But you can create variable tuples, too.
 Change the tuple you created in the exercises above to a variable by using var instead of let.
 Now change the average temperature to a new value.
 */

var dateTwo = (month: 12,day:25, year: 2025, averageTemp: 32.5)
dateTwo.averageTemp = 25.6

//: [Next](@next)
