//: Playground - noun: a place where people can play

import UIKit
//the (for) in loops
//loops is shortcuts of codes lets play and see(how can do with less afets how i cannot repeat my self)
let arrayOfNumbers = [1,4,2,4,6,6,4,2,23,65,100,200]

//create var for do sum of arrey
var sum = 0

//this code is look throw areyOfNumbers
for number in arrayOfNumbers {
    //for some of array number + plus all the array number one by one with (var sum = 0)
    sum += number
//  sum = sum + number
    //print sum+ in debug arey one by one answer
//    print(sum)
 
//*
    //print the all array number in debug area
//print(number)
    //add the line with array
//    print("new cycle")
    //for Loop do behind the scenes, let way do one by one but for loop do it only in once loop is menision above
//let number = arrayOfNumbers[0]
//print(number)
//print("new")
//*
    
}
    //print sum+ in debug arey only final answer
print(sum)


//2nd example
// i want to print 1 to 10 numbers
for number in 1...10 {
    print(number)
}
//i want to print number less one from 10
for number in 1..<10 {
    print(number)
}
//print only odd number which no is devide cleanle(means0) with % 2 ==0 result is odd number
for number in 1...10 where number % 2 == 0{
    print(number)
}
//print only even number which no is devide not cleanle(means1) with % 3 ==0 result is even number
for number in 1...10 where number % 2 == 0{
    print(number)
}
//example how its works odd even works
3.0/2.0
2.0/2.0
//odd (devide not cleanle(1)
3 % 2
//even (devide cleanle(0)
4 % 2
//odd (devide cleanle(0)
3 % 3
//even (devide not cleanle(1)
4 % 3


