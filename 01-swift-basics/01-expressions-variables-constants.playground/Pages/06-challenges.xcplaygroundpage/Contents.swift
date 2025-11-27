//: [Previous](@previous)

import Foundation

// : # Challenges

/*: ### Variables
 
 Declare a constant Int called myAge and set it equal to your age.
 Also, declare an Int variable called dogs and set it equal to the number of dogs you own.
 Then imagine you bought a new puppy and increment the dogs variable by one.
 */

let myAge: Int =  28
var dogs: Int = 2
dogs += 1

/*: ###  Average Rating
 
 Declare three constants called rating1, rating2 and rating3 of type Double and assign each a value.
 Calculate the average of the three and store the result in a constant named averageRating.
 */

let rating1: Double = 20.0
let rating2: Double = 25.5
let rating3: Double = 30
let averageRating: Double = (rating1 + rating2 + rating3) / 3

/*: ### Electrical Power
 
 The power of an electrical appliance is calculated by multiplying the voltage by the current.
 Declare a constant named voltage of type Double and assign it a value.
 Then declare a constant called current of type Double and assign it a value.
 Finally, calculate the power of the electrical appliance you’ve just created, storing it in a constant called power of type Double.
 */

let voltage: Double = 240.0
let current: Double = 7.5
let power: Double = voltage * current

/*: ### Electrical Resistance
 
 The resistance of such an appliance can then be calculated (in a long-winded way) as the power divided by the current squared.
 Calculate the resistance and store it in a constant called resistance of type Double.
 */

let resistance: Double = power / (current * 2)

/*: ### Challenge 8: Random Integer
 
 You can create a random integer number by using the function `arc4random()`. T
 his picks a number anywhere between 0 and 4294967295.
 You can use the modulo operator to truncate this random number to whatever range you want.
 
 Declare a constant `randomNumber` and assign it a random number generated with `Int(arc4random())`.
 Then calculate a constant called `diceRoll` and use the random number you just found to create a random number between 1 and 6.
 */

let randomNum: Int = Int(arc4random())
let diceRoll: Int = 1 + randomNum % 6

