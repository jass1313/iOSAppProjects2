//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by Jasbeer Singh on 30/04/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import Foundation
// selfDriveCar Class also add Car Class to get the all properties and Car is Super Class cuz its get get all the properties and SelfDrivingCar is sub class
class SelfDrivingCar : Car {
//    add its own property other properties get from Car
    func fly() {
    print("my car is fly")
    }
    
}

//plane
class Plane : SelfDrivingCar {
    //    add its own property and override other properties get from SelfDrivingCar
    override func fly() {
        super.fly()
        print("myPlaneFly&DriveInAir")
    }
}
