# Swift Overview

## Variables and Constants

- Variables in Swift are declared using the  `var` keyword. They can be assigned a value when declared and can be changed later.
```swift
var variableName = value
```
- Constants in Swift are declared using the  `let` keyword. They must be assigned a value at the time of declaration and their value canot be changed.
```swift
let constantName = value
```

### Data types:
- **Int**: Used to store whole numbers.
- **UInt**: Unsigned integer, used for non-negative whole numbers.
- **Double**: A 64-bit floating-point number. Used when you need high precision.
- **Float**: A 32-bit floating-point number. Used when precision isn't as critical.
- **Bool**: Represents a value that is either `true` or `false`.
- **String**: Represents a sequence of characters.
- **Character**: Represents a single character.

## Control Flow
Control flow can be implemented in swift using For loops, While loops and Switch statements. Control flow also includes conditional statements.

### If - else statements
```swift
if condition {
    // code to execute if condition is true
} else if anotherCondition {
    // code to execute if anotherCondition is true
} else {
    // code to execute if both conditions are false
}
```
### Switch statemets
```swift
switch value {
case pattern1:
    // Code to execute if value matches pattern1
case pattern2:
    // Code to execute if value matches pattern2
default:
    // Code to execute if value doesn't match any pattern
}
```
### For - in loops
```swift
for item in sequence {
    // Code to execute for each item in sequence
}
```
### While loops
```swift
while condition {
    // Code to execute as long as condition is true
}
```
## Functions
Functions in Swift are self-contained blocks of code that perform a specific task. They can take parameters, return values, and can be called when needed.
```swift
func functionName(parameterName: ParameterType) -> ReturnType {
    // function body
    return someValue
}
```
## Closures
Closures are self-contained blocks of functionality that can be passed around and used in your code. They can capture and store references to variables and constants from the context in which they are defined.
```swift
let closureName: (ParameterType) -> ReturnType = { (parameterName: ParameterType) -> ReturnType in
    // closure body
    return someValue
}
```
## Chaining
Chaining allows you to call multiple methods or closures in a single line. This is often used with closures that return the instance of the object they were called on.
```swift
ClassName {
    // Properties
    property1
    property2

    // Initializer
    init(parameters) {
        // Initialize properties
    }

    // Method 1
    method1() {
        // Perform some operation
        return self
    }

    // Method 2
    method2() {
        // Perform another operation
        return self
    }

    // Method 3
    method3() {
        // Perform yet another operation
        return self
    }
}

// Create an instance of the class
let object = ClassName(parameters)

// Chain method calls
object.method1().method2().method3()
```
## Classes
Classes in Swift are used to create custom data types that can have properties and methods. They are reference types, meaning that instances of a class are shared across multiple references.
```swift
class ClassName {
    // Properties
    var property1: PropertyType
    var property2: PropertyType

    // Initializer
    init(parameter1: PropertyType, parameter2: PropertyType) {
        self.property1 = parameter1
        self.property2 = parameter2
    }

    // Methods
    func methodName() {
        // method body
    }
}
```
## Objects
Objects are instances of classes. You create an object by calling the class's initializer.
```swift
let objectName = ClassName(parameter1: value1, parameter2: value2, ...)
```

## Namespaces
Swift uses modules and access control to manage the scope of types and functions. Each Swift file implicitly forms a namespace. You can use access control keywords (`public`, `internal`, `fileprivate`, `private`) to restrict the visibility of types and functions.
```swift
// File: Car.swift
public class Car {
    public var color: String
    public var speed: Int

    public init(color: String, speed: Int) {
        self.color = color
        self.speed = speed
    }

    public func describe() {
        print("This car is \(color) and it can go up to \(speed) mph.")
    }
}

// File: Main.swift
// Assuming Car.swift is part of the same module
let myCar = Car(color: "green", speed: 120)
myCar.describe()  // Output: This car is green and it can go up to 120 mph.
```




  
