import Foundation

/*: # Type saftey and convserion
 
 Now that you know how to perform basic operations and manipulate data using these operations, it’s time to learn more about types.
 Formally, a type describes a set of values and the operations you can perform on them. 
 
 Every value in a Swift program has a type.
 Every place you store a value — including constants and variables — also has a type.
 You might write the type explicitly using a type annotation, or Swift might infer the type from an initial value(more on this later).
 Every place in your code where you provide a value, that value’s type must match the place you use it.
 For example, if part of your code requires a String, you can’t pass it an Int by mistake.
 This kind of checking makes Swift a type-safe language.
 
 A type safe language encourages you to be clear about the types of values your code works with.
 Values of one type are never implicitly converted to another type.
 However, some types can be explicitly converted.
 When building code, Swift checks the code for type safety and flags any mismatched types as errors.
 */

// This declares a variable called integer of type Int
// Then it sets the value of the variable to 100
var integer: Int = 100
// This declares a constant called decimal of type Double
// Then it sets the value of the constant to 12.5
let decimal: Double = 12.5

// This changes the value of integer to the value of decimal
// This will cause an error because decimal is of type Double instead of Int
// Swift will not implicitly convert our type, we have to explicilty convert the value to a different type
//integer = decimial

// This changes the value of integer to the value of Int(decimal)
// The initializer(more on this later), Int(_:) creates an integer from the given floating-point(decimal) value
// However converting a Double to an Int results in a loss of precision: 12.5 becomes 12
integer = Int(decimal)

// This declares a constant called hourlyRate of type Double
// Then it sets the value of the constant to 19.5
let hourlyRate: Double = 19.5
// This declares a constant called hoursWorked of type Int
// Then it sets the value of the constant to 10
let hoursWorked: Int = 10

// This will cause an error because we are trying to apply an operator with two different types of operands(Double and Int)
// let totalCost: Double = hourlyRate * hoursWorked

// This declares a constant called totalCost of type Double
// Then it sets the value of the constant to hourlyRate * Double(hoursWorked)
// The initializer(more on this later) Double(_:), creates a Double from the given integer value
// When converting from an Int to a Double ther is no loss of precision
// This is allowed because we are trying to apply an operator to operands of the same type(Double)
let totalCost: Double = hourlyRate * Double(hoursWorked)

//: [Next](@next)
