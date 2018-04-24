//
//  Question.swift
//  Quizzler
//
//  Created by Jasbeer Singh on 24/04/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation
//Object Oriented Programming
//Under Class { let var Properties } ouside Constants/variables
//under class { func Methods} outside Functions
//Class when we create the class defind the these 3 { (Properties, Events, Actions) }  in under class and give instructions to oibjects how will work
//Objects have no idea how to do things they only take instructions from class
//expample 1 resturant 3 person they do dif dif work and if we find problem in a person so we can fix it very simple way
//classes are blueprint / instructions how will object will work and object is accual what we make from class blueprint instructions
// Object have 3 main thing accusated with them example (CAR)1. Properties (Colour,seats?)these are defind using let var, 2. Actions (How Move, how to drive, how brake work) these are defind in func 3. Events (How the object respond ) Onject and in these 3 thing to how to task and i how to pass messages each other
//when we create the class then first leter shoud be Captialize


class Question {
// properties
    let questionText : String
    let answer : Bool
    
//    Events
    //(QuestionText and answer) property below codes (initializers code set xcode happy)
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
//    Actions
    func someFunction() {
//        Do Something
    }
    
}
// Object
//class MyOtherClass {
//    Question
//    let question = Question(text: "Whats the meaning of life?", correctAnswer: true)
//}
