//: Playground - noun: a place where people can play

func getWeightHeight(howManyKgWeight : Double, howManyFeetHieght : Double) -> String {
    let bmi = howManyKgWeight / (howManyFeetHieght * howManyFeetHieght)
    
   
    
    var interpretation = ""
    
    if bmi > 25{
               interpretation = "your bmi is \(bmi) your overweight"
    } else {
        if bmi > 18 && bmi < 25 {
           interpretation = "your bmi is \(bmi) your are normal"
        } else {
           interpretation = "your bmi is \(bmi) Your underweight"
        }
    }
    return interpretation
     //another way to return
//    return "\(bmi) and \(interpretation)"
}

var bmiResult = getWeightHeight(howManyKgWeight: 50, howManyFeetHieght: 1.8)
print(bmiResult)


//if in US
func bmiCalcuImperialUnits(weightInPounds: Double, heightInFeet: Double, remainderInInches: Double) {
    
    let weightInKg = weightInPounds * 0.45359237
    let totalInches = heightInFeet * 12 + remainderInInches
    let heightInM = totalInches * 0.0254
    
    let bmiUS = weightInKg / (heightInM * heightInM)
    print(bmiUS)
}
bmiCalcuImperialUnits(weightInPounds: 140, heightInFeet: 5, remainderInInches: 11)


//1 foot = 12 inches
//1 inch = 0.0254 meters
//1 pound = 0.45359237 kilograms
