//
//  Car.swift
//  Classes and Objects
//
//  Created by Jasbeer Singh on 30/04/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import Foundation

// enum keyword name Also start from Capital Letters
// Enumerated is alow to do Custom Data Type so we can use in String and Int Data Tpes to declare property in Class
enum CarType {
    //    3 posible case of car type
    case Sedan
    case Coupe
    case Hatchback
    
}

class Car {
    //Var nd Let are Contains the data property for Blueprint what to do in Object
    var color = "Black"
    var numbesOfSeats = 5
    // custom Data Type for Cartype from enum and the value of this Property is .Coupe
    // using Enum to code typeOfCar
    var typeOfCar : CarType = .Coupe
    
    
    // Initializer for Create Custom Class for Special Type Object for (Special type Car)
    // Designated initializer alow u to override default property
    init() {
    }
    //change color property for customer Required Color and overriding the Default Color
    //        color = customerChosenColour
    
    //convenience Initializer optional Init
    convenience init (customerChosenColour : String) {
        //        Trigger to the Designated init for get the properties
        self.init()
        color = customerChosenColour
    }
    
//    func/method (Actions) for moving object
    func drive() {
        print("car is moving")
    }
}



