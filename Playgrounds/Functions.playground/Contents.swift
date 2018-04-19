//Create Func
func nameOfFunctions() {
}
//Creating the Func For Give Order to robote Buy Milk
func getMilk() {
//    instructions
    print("go to shops")
    print("buy 2 cartons of Milk of Amul Brand")
    print("pay 80 Ruppes")
    print("come home")
}
//Calling the getMilk() function (No need to give instructions everytime for buy milk just give Command getMilk())
getMilk()
//again
getMilk()
//again
getMilk()

//Part 2 Of Functions (Func get input )
func getMilk2(howManyMilkCartons : Int) {
    print("go to shops")
//    Auto get the input How many cartoons of milk
    print("buy \(howManyMilkCartons) cartons of Milk of Amul Brand")
//    Auto get the inpit how many price to pay
    let priceToPay = howManyMilkCartons * 40
    print("pay \(priceToPay) Ruppes")
    print("come home")
}
//Calling robot getMilk
//today 8 crt
getMilk2(howManyMilkCartons: 8)
//tommorrow 3
getMilk2(howManyMilkCartons: 3)
//After Tommorrow 5
getMilk2(howManyMilkCartons: 5)


//Part 3 Of Functions (Func multiple input, output & return )
func getMilk3(howManyMilkCartons : Int, howMuchMoneyRobotWasGiven : Int) -> Int {
    print("go to shops")
    //    Auto get the input How many cartoons of milk
    print("buy \(howManyMilkCartons) cartons of Milk of Amul Brand")
    //    Auto get the input how many price to pay
    let priceToPay = howManyMilkCartons * 40
    print("pay \(priceToPay) Ruppes")
    print("come home")
    //  How Much Money robot give back to owner
    let change = howMuchMoneyRobotWasGiven - priceToPay
    // return get command from upper line how much retun money (change)
    return change
}
//Calling robot to get milk and retun the money to owner
var amountOfChange = getMilk3(howManyMilkCartons: 1, howMuchMoneyRobotWasGiven: 100)
//
print("Hello Owner, here's your \(amountOfChange)Rupees change")
