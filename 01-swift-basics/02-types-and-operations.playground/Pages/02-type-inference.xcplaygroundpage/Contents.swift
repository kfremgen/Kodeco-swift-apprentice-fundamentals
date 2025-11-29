//: [Previous](@previous)

import Foundation

/*: # Type inference
 
 Even though Swift is a type safe language you do not have to specify the type of every constant and variable that you declare.
 If you don’t specify the type of value you need, Swift uses type inference to work out the appropriate type.
 Type inference enables a compiler to deduce the type of a particular expression automatically when it compiles your code, simply by examining the values you provide.
 
 Because of type inference, Swift requires far fewer type declarations than languages such as C or Objective-C.
 Constants and variables are still explicitly typed, but much of the work of specifying their type is done for you.
 
 Type inference is particularly useful when you declare a constant or variable with an initial value.
 This is often done by assigning a literal value (or literal) to the constant or variable at the point that you declare it.
 A literal value is a value that appears directly in your source code, such as 42 and 3.14159 in the examples below.
 
 ```
 let constantName = value
 var variable = value
 ```
 
 For example, if you assign a literal value of 42 to a new constant without saying what type it is, Swift infers that you want the constant to be an Int, because you have initialized it with a number that looks like an integer:
 
 ```
 // meaningOfLife is inferred to be of type Int
 let meaningOfLife = 42
 ```
 
 Likewise, if you don’t specify a type for a floating-point(decimal) literal, Swift infers that you want to create a Double:
 
 ```
 // pi is inferred to be of type Double
 let pi = 3.14159
 ```
 
 Swift always chooses Double (rather than Float) when inferring the type of floating-point numbers.
 */

// This declares a constant called typeInferredInt with a value of 42
// The type is inferred to be an Int based on the value
let typeInferredInt = 42

// This declares a constant called typeInferredDouble with a value of 3.14
// The type is inferred to be a Double based on the value
let inferredDouble = 3.14

//: [Next](@next)
