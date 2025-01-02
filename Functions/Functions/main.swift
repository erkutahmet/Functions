//
//  main.swift
//  Functions
//
//  Created by Ahmet Erkut on 8.10.2023.
//

import Foundation

/*
     In Swift, a function is a reusable block of code that performs a specific task or set of tasks. Functions allow you to encapsulate code into named blocks, making your code more organized, modular, and easier to read and maintain. Functions can take input parameters, perform computations, and return values.

     Here's the basic syntax for declaring a function in Swift:
 
     func functionName(parameter1: Type, parameter2: Type, ...) -> ReturnType {
         // Function body
         // Perform some tasks here
         // Optionally, return a value of ReturnType
     }

     func: This keyword is used to declare a function.
     functionName: This is the name you give to your function, which should describe what the function does. Function names in Swift follow camelCase convention (start with a lowercase letter and use uppercase letters for each new word within the name).
     (parameter1: Type, parameter2: Type, ...): This is the parameter list enclosed in parentheses. Parameters are inputs that the function can accept. Each parameter is defined with a name (e.g., parameter1) and a type (e.g., Type). You can have zero or more parameters.
     -> ReturnType: If your function returns a value, you specify its return type using the -> arrow followed by the return type (e.g., ReturnType). If the function doesn't return anything, you can omit this part or specify Void to make it explicit.
     Function Body: The block of code enclosed in curly braces {} represents the function's body. This is where you write the code that performs the desired tasks.
*/

class Functions {
    // MARK: Void Function (no return value)
    ///A function can also be defined without a return type if it doesn't need to return a value. In this case, you can use Void or simply omit the return type. For example:
    func sayHello1(){
        let result = "Hello Ahmet"
        print(result)
    }
    
    // MARK: Return Function (return value)
    ///A function in Swift can return a value using the -> arrow notation followed by the return type. For example:
    func sayHello2() -> String{
        let result = "Hello Ahmet"
        return result
    }
    
    // MARK: Parameters
    ///Functions can take one or more parameters, which are values passed to the function for it to work with. Parameters are defined within the parentheses following the function name. For example:
    func sayHello3(name: String){
        let result = "Hello \(name)"
        print(result)
    }
    
    func summation(n1: Int, n2: Int) -> Int {
        let sum = n1 + n2
        return sum
    }
    
    // MARK: Overloading
    ///Function overloading allows you to define multiple functions with the same name but different parameter lists. Swift uses the parameter types and the number of parameters to determine which overloaded function to call. For example:
    func multiplication(n1: Int, n2: Int) {
        print("Multiplication: \(n1 * n2)")
    }

    func multiplication(n1: Double, n2: Double){
        print("Multiplication: \(n1 * n2)")
    }
    
    func multiplication(n1: Int, n2: Int, name: String){
        print("Multiplication: \(n1 * n2) - Made by: \(name)")
    }
}

let f = Functions()

f.sayHello1()

let theResult = f.sayHello2()
print("Geted Result: \(theResult)")

f.sayHello3(name: "Erkut")

let sumResult = f.summation(n1: 5, n2: 12)
print("Summation Result: \(sumResult)")

f.multiplication(n1: 10, n2: 20)
f.multiplication(n1: 10.0, n2: 20.2)
f.multiplication(n1: 10, n2: 20, name: "Erkut")


print("Selamualeykü")
