//: Playground - noun: a place where people can play

import UIKit
//using loops with func in a program
func bikeBuySell() -> String {
    var story: String = ""
    
for number in 1...99 {
//    n\ is for every sentence show in new line
    let newLine: String = "\n\(100 - number) bike i buy from amazon , \n\(100 - number) bike is red colour. Sell one bike to somebody, \n\(100 - number - 1) bikes i have now\n"
    story += newLine
}
    //+ sign i use for add more data in current line
    story += "\nNo More bikes i have, \nNo More red colour bikes. \nGo to the amazon store buy some more, \n99 bike i have."
    
    return story
}
//print(bikeBuySell())

//2nd way
//using loops with func in a program
func bikeBuySell2() -> String {
    var story: String = ""
    
    //use reveersed for countdown the numbers
    for number in (1...99).reversed() {
        //    n\ is for every sentence show in new line
        let newLine: String = "\n\(number) bike i buy from amazon , \n\(number) bike is red colour. Sell one bike to somebody, \n\(number - 1) bikes i have now\n"
        story += newLine
    }
    //+ sign i use for add more data in current line
    story += "\nNo More bikes i have, \nNo More red colour bikes. \nGo to the amazon store buy some more, \n99 bike i have."
    
    return story
}
//print(bikeBuySell2())

//3rd is differnt
//i give input in func parameters so print give command to change the number
//Add 2 permeters in input parameters so we can use dif dif name inside func and outside
//we can use_ in the palce of parameters so in the end print command we can use blank parameters but not use in this func
func bikeBuySell3(ForThisManyBikes totalNumbersOfBikes : Int) -> String {
    var story: String = ""
    
//    (for number) take input from func parameters for take command of number
    for number in (1...totalNumbersOfBikes).reversed() {
        let newLine: String = "\n\(number) bike i buy from amazon , \n\(number) bike is red colour. Sell one bike to somebody, \n\(number - 1) bikes i have now\n"
        story += newLine
    }
    story += "\nNo More bikes i have, \nNo More red colour bikes. \nGo to the amazon store buy some more, \n99 bike i have."
    
    return story
}
//print also give output number command to func
print(bikeBuySell3(ForThisManyBikes: 99))
