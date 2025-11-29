//: [Previous](@previous)

import Foundation

/*: # Strings
 
 Numbers are essential in programming, but they aren’t the only type of data you need to work within your apps.
 Text is also an extremely common data type used to represent things like people’s names, addresses, or even the words of a book.
 Most computer programming languages store text in a data type called a string.
 
 A string is a series of characters, such as "hello, world" or "albatross".
 Swift strings are represented by the String type.
 The contents of a String can be accessed in various ways, including as a collection of individual Character values.
 
 ## Creating characters and strings
 
 Swift can work directly with characters and strings.
 It does so through the data types Character and String.
 
 Swift’s String and Character types provide a fast, Unicode-compliant way to work with text in your code.
 The syntax for string creation and manipulation is lightweight and readable, with a string literal syntax that’s similar to C.
 
 You can include predefined String values within your code as string literals.
 A string literal is a sequence of characters surrounded by double quotation marks (").
 
 ```
 "This is a string literal"
 ```
 
 Use a string literal as an initial value for a constant or variable:
 
 ```
 let someString: String = "Some string literal value"
 let inferredString = "Some string literal value"
 ```
 
 Note that Swift infers a type of String for the inferredString constant because it’s initialized with a string literal value.
 
 There’s no such thing as a character literal in Swift.
 A character is simply a string of length one.
 However, Swift infers the type of any string literal to be String, so if you want a Character instead, you must make the type explicit.
 
 Another way to create a String or character is via initializer (more on this later) syntax: `String(_:)` and Character`(_:)`.
 */

// This declares a constant called characterA of type Character
// Then it sets the value of the constant to a string literal "a"
let characterA: Character = "a"
// This declares a constant called stringDog of type String
// Then it sets the value of the constant to a string literal "dog"
let stringDog: String = "dog"

// This declares a constant called inferredStringDog with a value of a string literal "dog"
// The type is inferred to be a String based on the value
let inferredStringDog = "dog"

// This declares a constant called emptyString with a value of a string literal ""
// The type is inferred to be a String based on the value
let emptyString  = ""

// This declares a constant called anotherEmptyString with a value of String()
// The initalizer String() creates an empty string
// The type is inferred to be a String based on the value
let anotherEmptyString = String()

/*: ## Concatenation
 
 You can do much more than create simple strings.
 Sometimes you need to manipulate a string, and one common way to do so is to combine it with another string.
 
 String values can be added together (or concatenated) with the addition operator (+) to create a new String value:
 
 ```
 let string1 = "hello"
 let string2 = " there"
 var combinedString = string1 + string2
 // combinedString now equals "hello there"
 ```
 
 You can also append a String value to an existing String variable with the addition assignment operator (+=):
 
 ```
 var stringVariable = "look over"
 let stringVariable2 = " there"
 stringVariable += stringVariable2
 // stringVariable now equals "look over there"
 ```
 
 You can append a Character value to a String as well.
 In order to do that you must convert the Character value to a String due to type saftey.
 Because of type saftey values of one type are never implicitly converted to another type.
 You have to do that explicitly.
 */

// This declares a variable called message with a value: "Hello" + " " + "my name is"
// This uses concatenation to add the three string literals into a single string literal
// The type is inferred to be a String based on the value
var message = "Hello" + " " + "my name is"

// This declares a constant called name with a value of a string literal "Kevin"
// The type is inferred to be a String based on the value
let name = "Kevin"

// This sets the value of message to:  message + " " + name
// This uses concatenation to add a string variable,constant, and literal into a single string literal
message = message + " " + name

// This declares a constant called exclamationMark of type Character
// Then it sets the value of the constant to a string literal "!"
let exclamatinMark: Character = "!"

// This sets the value of message to:  message + String(exclamationMark)
// The initializer(more on this later) String(_:), creates a string containing the given character
// This uses concatenation to add a string variable and constant into a single string literal and assign it back to the variable
message += String(exclamatinMark)

/*: ## Interpolation
 
 You can also build up a string by using interpolation.
 String interpolation is a way to construct a new String value from a mix of constants, variables, literals, and expressions by including their values inside a string literal.
 You can use string interpolation in both single-line and multiline string literals.
 Each item that you insert into the string literal is wrapped in a pair of parentheses, prefixed by a backslash (\):
 
 ```
 "... \(expression) .... "
 ```
 
 It’s an extension of the string literal syntax, whereby you replace certain parts of the string with other values.
 
 ```
 let multiplier = 3
 let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
 // message is "3 times 2.5 is 7.5"
 ```
 In the example above, the value of multiplier is inserted into a string literal as \(multiplier).
 This placeholder is replaced with the actual value of multiplier when the string interpolation is evaluated to create an actual string.
 The value of multiplier is also part of a larger expression later in the string.
 This expression calculates the value of Double(multiplier) * 2.5 and inserts the result (7.5) into the string.
 In this case, the expression is written as \(Double(multiplier) * 2.5) when it’s included inside the string literal.
 */

// This declares a constant called greeting with a value of a string literal
// The type is inferred to be a String based on the value
// This uses interpolation to construct a new string by inserting the variable name into the string literal
let greeting = "Hello my name is \(name)!"

// This declares a constant called oneThird with a value returned from the expresson 1.0 / 3.0
// The type is inferred to be a Double based on the value
let oneThird = 1.0 / 3.0

// This declares a constant called oneThirdString with a value of a string literal
// The type is inferred to be a String based on the value
// This uses interpolation to construct a new string by inserting the variable oneThird into the string literal
let oneThirdString = "One third is \(oneThird) as a decimal"

/*: ## Multiline strings literals
 
 If you need a string that spans several lines, use a multiline string literal — a sequence of characters surrounded by three double quotation marks:
 
 ```
 """
 This is a
 mulitline string
 literal.
 """
 ```
 
 A multiline string literal includes all of the lines between its opening and closing quotation marks.
 The string begins on the first line after the opening quotation marks (""") and ends on the line before the closing quotation marks.
 
 A multiline string can be indented to match the surrounding code.
 The whitespace before the closing quotation marks (""") tells Swift what whitespace to ignore before all of the other lines.
 However, if you write whitespace at the beginning of a line in addition to what’s before the closing quotation marks, that whitespace is included.
 */

// This declares a constant called bigString with a value of a multiline string literal
// The type is inferred to be a String based on the value
let bigString = """
    You can have a string 
    that contains mulitple 
    lines by doing this.
    """

//: # Exercises

/*: ### Exercise 1
 
 Create a string constant called firstName and initialize it to your first name.
 Also, create a string constant called lastName and initialize it to your last name.
 */

let firstName = "Kevin"
let lastName = "Fremgen"

/*: ### Exercise 2
 
 Create a string constant called fullName by adding the firstName and lastName constants together, separated by a space.
 */

let fullName = firstName + " " + lastName

/*: ### Exercise 3
 
 Using interpolation, create a string constant called myDetails that uses the fullName constant to create a string introducing yourself. For example, my string would read: "Hello, my name is Matt Galloway.".
 */

let myDetails = "Hello there, my name is \(fullName)."

//: [Next](@next)
