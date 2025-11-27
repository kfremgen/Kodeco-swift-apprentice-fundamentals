//: [Previous](@previous)

import Foundation

/*: # Constants and Variables
 
 In your Swift code, you can give each piece of data a name you can refer to later.
 The name carries with it a type annotation that denotes what sort of data the name refers to, such as text, numbers, or a date.
 
 Constants and variables associate a name (such as maximumNumberOfLoginAttempts or welcomeMessage) with a value of a particular type (such as the number 10 or the string "Hello").
 
 The value of a constant can’t be changed once it’s set, whereas a variable can be set to a different value in the future.
 
 ## Declaring Constants and Variables
 
 Constants and variables must be declared before they’re used.
 You declare constants with the `let` keyword and variables with the `var` keyword.
 You can provide a type annotation when you declare a constant or variable, to be clear about the kind of values the constant or variable can store.
 Write a type annotation by placing a colon after the constant or variable name, followed by a space, followed by the name of the type to use.
 
 ```
 let constantName: Type = value
 var variableName: Type = value
 ```
 
 Here’s an example of how constants and variables can be used to track the number of login attempts a user has made:
 
 ```
 let maximumNumberOfLoginAttempts: Int = 10
 var currentLoginAttempt: Int = 0
 ```
 This code can be read as:
 
 > Declare a new constant called maximumNumberOfLoginAttempts of type Int and give it a value of 10.
 > Then, declare a new variable called currentLoginAttempt of type 0 and give it an initial value of 0.
 
 In this example, the maximum number of allowed login attempts is declared as a constant, because the maximum value never changes.
 The current login attempt counter is declared as a variable, because this value must be incremented after each failed login attempt.
 If a stored value in your code won’t change, always declare it as a constant with the let keyword.
 Use variables only for storing values that change.
 
 When you declare a constant or a variable, you can give it a value as part of that declaration, like the examples above.
 Alternatively, you can assign its initial value later in the program, as long as it’s guaranteed to have a value before the first time you read from it.
 
 ```
 var welcomeMessage: String
 ```
 
 The code above can be read as:
 
 > Declare a variable called welcomeMessage of type String.
 
 The phrase “of type String” means “can store any String value.”
 Think of it as meaning “the type of thing” (or “the kind of thing”) that can be stored.
 
 The welcomeMessage variable can now be set to any string value without error:
 
 ```
 welcomeMessage = "Hello"
 ```
 
 ## Type saftey
 
 Every value in a Swift program has a type.
 Every place you store a value — including constants and variables also has a type.
 You might write the type explicitly using a type annotation, or Swift might infer the type from an initial value(more on this later).
 Every place in your code where you provide a value, that value’s type must match the place you use it.
 For example, if part of your code requires a String, you can’t pass it an Int by mistake.
 This kind of checking makes Swift a type-safe language.
 
 When building code, Swift checks the code for type safety and flags any mismatched types as errors.
 Because of type saftey once you’ve declared a constant or variable of a certain type, you can’t change it to store values of a different type.
 */

// This declares a constant called constantNumber of type Int
// Then it sets the value of the constant to the Int 10
// The Int type can store intgers
let ConstantNumber: Int = 10

// This declares a constant called pi of type Double
// Then it sets the value of the constant to the Double 3.14
// A Double is a type that can store decimals with high precision
let pi: Double = 3.14


// Constant can't be changed once they are given a value
// This will cause an error since we are trying to change a constant that already has a value
// consatnNumber = 0

// This declares a variable called variableNumber of type Int
// Then it sets the value of the variable to 42
var variableNumber: Int = 42

// Variables can change their value as long as the type remains the same
// variableNumber is declared to be of type Int
// This changes the value of variableNumber to 0
// This is allowed because 0 is of type Int
variableNumber = 0

// This changes the value of variableNumber to 10.10
// This will cause an error because 10.10 is of type Double instead of Int
// variableNumber = 10.10

/*: ## Naming Constants and Variables
 
 Constant and variable names can contain almost any character, including Unicode characters.
 Constant and variable names can’t contain whitespace characters, mathematical symbols, arrows, private-use Unicode scalar values, or line- and box-drawing characters.
 Nor can they begin with a number, although numbers may be included elsewhere within the name.
 
 If you need to give a constant or variable the same name as a reserved Swift keyword, surround the keyword with backticks (``) when using it as a name.
 However, avoid using keywords as names unless you have absolutely no choice.
 
 In Swift, it is common to camel case names.
 For variables and constants, follow these rules to case your names properly:
 - Start with a lowercase letter.
 - If the name is made up of multiple words, join them together and start the other words with an uppercase letter.
 - If one of these words is an abbreviation, write the entire abbreviation in the same case (e.g.: sourceURL and urlDescription)
 */

//: # Mini-Exercises

/*: ### Exercise 1
 
 Declare a constant of type Int called myAge and set it to your age.
 */

let myAge: Int = 28

/*: ### Exercise 2
 
 Declare a variable of type Double called averageAge.
 Initially, set it to your own age.
 Then, set it to the average of your age and the age of 30.
 */

var averageAge: Double = 28
averageAge = (averageAge + 30) / 2

//: [Next](@next)
