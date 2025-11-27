//: [Previous](@previous)

import Foundation

/*: # Assignment operators
 
 Previously we looked at arithmetic operators and saw the assignment operator when dealing with constants and variables.
 
 The assignment operator and compound assignment operators all belong to the  AssignmentPrecedence group, which is right associative.
 This precedence group has a lower precedence than the operators we recently seen(arithmetic operators).
 
 ## Assignment operator
 
 The assignment operator (a = b) initializes or updates the value of a with the value of b:
 
 ```
 let b: Int = 10 // b is set to the value of 10
 var a: Int = 5 // a is set to the value of 5
 a = b // a is updated to the value of 10
 ```
 
 ## Compound assignment operator
 
 Compound assignment operators combine assignment (=) with another operation.
 
 One example is the addition assignment operator (+=):
 
 ```
 var a = 1 // a is set to the value of 1
 a += 2 // a is updated to the value of 3
 ```
 
 The expression `a += 2` is shorthand for `a = a + 2`.
 Effectively, the addition and the assignment are combined into one operator that performs both tasks at the same time.
 
 The main compound assignment operators are:
 - Addition and assign (+=)
 - Subtraction and assign (-=)
 - Multiplication and assign (*=)
 - Division and assign (/=)
 - Remainder and assign (%=)
 */

// This declares a variable called counter of type Int
// Then it sets the value of the variable to 0
var counter: Int = 0

// This uses the add and assign operator
// This takes the operand on the right(1) adds it to the value of the left operand(counter) and assigns the new value to the left operand(counter)
// counter = counter + 1
counter += 1

// This uses the subtract and assign operator
// This takes the operand on the right(1) subtracts it to the value of the left operand(counter) and assigns the new value to the left operand(counter)
// counter = counter - 1
counter -= 1

// This changes the value of counter to 10
counter = 10

// This uses the multiply and assign operator
// This takes the operand on the right(3) multiplies it to the value of the left operand(counter) and assigns the new value to the left operand(counter)
// counter = counter * 3
counter *= 3

// This uses the divide and assign operator
// This takes the operand on the right(2) divides it to the value of the left operand(counter) and assigns the new value to the left operand(counter)
// counter = counter / 2
counter /= 2

//: # Mini Exercises

/*: ### Exercise 1
 
 Create a variable called answer and initialize it with the value 0.Then:
 - Increment it by 2.
 - Multiply it by 10.
 - Divide it by 5.
 After all of these operations, what’s the answer?
 */

var answer: Int = 0
answer += 2 // 2
answer *= 10 // 20
answer /= 5 // 4

//: [Next](@next)
