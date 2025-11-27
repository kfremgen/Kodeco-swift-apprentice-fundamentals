//: [Previous](@previous)

import Foundation

/*: # Basic operators
 
 An operator is a special symbol or phrase that you use to check, change, or combine values.
 For example, the addition operator (+) adds two numbers, as in  1 + 2.
 
 ## Terminology
 
 Operators are unary, binary, or ternary:
 
 - Unary operators operate on a single target (such as -a).
 Unary prefix operators appear immediately before their target (such as !b), and unary postfix operators appear immediately after their target (such as c!).
 
 - Binary operators operate on two targets (such as 2 + 3) and are infix because they appear in between their two targets.
 
 - Ternary operators operate on three targets.
 Like C, Swift has only one ternary operator, the ternary conditional operator (a ? b : c).
 
 The values that operators affect are operands.
 In the expression 1 + 2, the + symbol is an infix operator and its two operands are the values 1 and 2.
 */

/*: ## Arithmetic operators
 
 Swift supports the four standard arithmetic operators for all number types:
 - Addition (+)
 - Subtraction (-)
 - Multiplication (*)
 - Division (/)
 */

// Each of the below lines is an expression, meaning each returns or evaluates to a value
// In these cases, all four expressions have the same value: 8
2 + 6 // 8
10 - 2 // 8
2 * 4 // 8
24 / 3 // 8

// All of the operations above have used whole numbers, more formally known as integers
// The expression below gives a results of 3
// If only integers are in an expression, Swift also makes the result an integer
// In case below, the result is rounded down to the next integer
22 / 7 // 3

// The expression below uses decimals, more formally known as doubles
// Since the expression only uses doubles, Swift will make the result a double
22.0 / 7.0 // 3.14..

/*: ## Remainder operator
 
 The remainder operator (a % b) works out how many multiples of b will fit inside a and returns the value that’s left over (known as the remainder).
 The remainder operator (%) is also known as a modulo operator in other languages.
 
 Here’s how the remainder operator works.
 To calculate 9 % 4, you first work out how many 4s will fit inside 9.
 You can fit two 4s inside 9, and the remainder is 1.
 Therefore 1 will be returned from the expression (9 % 4).
 */

// The expression is equal 8
// 10 goes into 28 twice with a remainder of 8
28 % 10

/*: ## Orders of operations
 
 Operator precedence gives some operators higher priority than others; these operators are applied first.
 
 Operator associativity defines how operators of the same precedence are grouped together — either grouped from the left, or grouped from the right.
 Think of it as meaning “they associate with the expression to their left,” or “they associate with the expression to their right.”
 
 It’s important to consider each operator’s precedence and associativity when working out the order in which a compound expression will be calculated.
 
 For example, operator precedence explains why the following expression equals 17.
 
 ```
 // This equals 17
 2 + 3 % 4 * 5

 ```
 
 If you read strictly from left to right, you might expect the expression to be calculated as follows:
 - 2 plus 3 equals 5
 - 5 remainder 4 equals 1
 - 1 times 5 equals 5
 
 However, the actual answer is 17, not 5.
 Higher-precedence operators are evaluated before lower-precedence ones.
 In Swift, as in C, the remainder operator (%) and the multiplication operator (*) have a higher precedence than the addition operator (+).
 As a result, they’re both evaluated before the addition is considered.
 
 However, remainder and multiplication have the same precedence as each other.
 To work out the exact evaluation order to use, you also need to consider their associativity.
 Remainder and multiplication both associate with the expression to their left.
 Think of this as adding implicit parentheses around these parts of the expression, starting from their left:
 
 ```
 2 + ((3 % 4) * 5)
 ```
 
 (3 % 4) is 3, so this is equivalent to:
 
 ```
 2 + (3 * 5)
 ```
 
 (3 * 5) is 15, so this is equivalent to:
 
 ```
 2 + 15
 ```
 
 This calculation yields the final answer of 17.
 
 The precedence rules follow the same that you learned in math at school:
 - Paranetheses have the highest precedence
 - Multiply,divide, and remainder are next with the same precedence
 - Additon and subtraction are last with the the same precedence
 */

// This expression is equal to 72
// Since division is the operator with the highest precedence is gets executed first
// 350 / 5 = 70
// The the addition operator will get executed 70 + 2 = 72
350 / 5 + 2

// This expression is equal to 50
// Since parantheses is the operator with the highest precedence is gets executed first
// (5+2) = 7
// The the division operator will get executed 350 / 7 = 50
350 / (5 + 2)

//: [Next](@next)
