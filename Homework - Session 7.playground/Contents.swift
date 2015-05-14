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



struct User {
    var Email: String
    var Password: String
}

// Played with a few different Regex codes but in the end, the one that Adam found seemed to be the simplest. This one: http://benscheirman.com/2014/06/regex-in-swift/


class Regex {
    let internalExpression: NSRegularExpression
    let pattern: String
    
    init(_ pattern: String) {
        self.pattern = pattern
        var error: NSError?
        self.internalExpression = NSRegularExpression(pattern: pattern, options: .CaseInsensitive, error: &error)!
    }
    
    func test(input: String) -> Bool {
        let matches = self.internalExpression.matchesInString(input, options: nil, range:NSMakeRange(0, count(input)))
        return matches.count > 0
    }
}

infix operator =~ {}

func =~ (input: String, pattern: String) -> Bool {
    return Regex(pattern).test(input)
}

//Rest of code

var Users = [User]()

Users.append(
    User(Email: "xanthe.dobbie@gmail.com", Password:"password1")
)

Users.append(
    User(Email:"xanthe.dobbie@hotmail.com", Password: "password2")
)

Users.append(
    User(Email: "newemail@email.email", Password: "password3")
)

Users.append(
    User(Email:"anotherwrongthing.dumb", Password:"short")
)

for User in Users {
if User.Email =~ "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"{
        println ("Email address is valid")
}
else {
    println("Please check that you have entered a valid email address")
}
}

for User in Users {
if User.Password =~ "\\w{8}" {
        println("Password is valid")
}
else {
    println("Please enter a password that has at least 8 characters")
}
}

var enteredEmail = "xanthe.dobbie@gmail.com"
var enteredPassword = "wrongpassword"

var userAuthenticated = false

for User in Users {
    if enteredEmail == User.Email && enteredPassword == User.Password {
        userAuthenticated = true
        break
    }
}

if userAuthenticated {
    println("Access granted")
}

else {
    println ("Access denied")
}

if let User = (Users.filter { $0.Email == enteredEmail && $0.Password == enteredPassword}).first {
    println("Access granted to \(User.Email)")
}
else {
    println("Access denied")
}


































