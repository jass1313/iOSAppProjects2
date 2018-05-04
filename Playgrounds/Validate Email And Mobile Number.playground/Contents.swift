//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func validate (value:String) ->Bool {
    let phone_Regex = "\\d{3}-\\d{3}-\\d{4}$"
    let phoneTest = NSPredicate(format: "SELF MATCHES %@", phone_Regex)
    let result = phoneTest.evaluate(with: value)
    return result
    
    
}

func isValidEmail (teststr:String) -> Bool {
    let emailRegEx = "[A-Z0-9a-z-.%_]+@[A-Za-z0-9-]+.[A-Za-z]{2,64}"
    let emailTest = NSPredicate(format: "SELF MATCHES%@", emailRegEx)
    return emailTest.evaluate(with: teststr)
}
