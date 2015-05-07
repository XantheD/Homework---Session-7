//: Playground - noun: a place where people can play

import UIKit

//Build a login program in a Swift playground that meets these requirements:
//- Has a `users` array which is a Array of `User` structs
//- A User struct has two string properties, `email` and `password` (both are non-optional)

//- Has a string for the current pretend value that the user has entered for a email
//    - Has a string for the current pretend value that the user has entered for a password
//        
//        - Validates that the email is a valid email (just use presence of @ and min length but BONUS: Use regular expressions)
//- Validates that the password is valid (min length of 8 characters)
//
//- Iterates through the `users` array, seeing if there is a user that matches the supplied email and password combination
//- Print a success message if found
//- Print a error message if not found
//
//BONUS: Add a `type` property to user `User` struct which is an enum called `UserType` which has three types, Admin, Editor and Member
//BONUS: Create an `authenticate` function which takes an email and password parameter and returns true or false if the email and password combination is valid.
//EXTRA BONUS: Create a class `AuthenticationManager` which has an `authenticate` function which does the above. Use this in your solution.

struct userLoginPage {
    var Email: String
    var Password: String
}



