//
//  main.swift
//  Classes and Objects
//
//  Created by Jasbeer Singh on 30/04/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import Foundation
//this is how to create class and how call turn inro objects
//Create an Object from a class(Car) (using the Bluprint or class)
//input () cuz we add Init in Car for custom color
//Designated init Car()
//Designated Init make sure all the proprty of the Object Have Value
let myCar = Car()

//Convenience Init which allow u custom input
//Convenience Init essential add on to that in Object Property
let someRichGuyCar = Car(customerChosenColour: "Gold")

//Designated Init
print(myCar.color)
print(myCar.numbesOfSeats)
print(myCar.typeOfCar)

//Convenience Init
print(someRichGuyCar.color)
print(someRichGuyCar.numbesOfSeats)
print(someRichGuyCar.typeOfCar)

//Action of the Car Using Object myCar and func .drive() so car moving
myCar.drive()

//mySelfDriveCar is also Driving and get the property from myCar or Car()
let mySelfDriveCar = SelfDrivingCar()
//get property from myCar
mySelfDriveCar.drive()
//get property from myCar
print(mySelfDriveCar.color)
//mySelfDiveCar own property 
mySelfDriveCar.fly()


//Plane
let myPlaneFly = Plane()
//Plane own property
myPlaneFly.fly()
//properties take from myCar()
print(myPlaneFly.color)




    
    


