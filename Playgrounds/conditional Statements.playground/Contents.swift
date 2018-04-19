
import UIKit
//Love Calculator names in string retun in numbers so its Int if result is Cracters Type so its String
func loveCalculator (yourName : String, theirName : String) -> String {
//    get a random number in LC use random code and get retun into 0 to 100 so type 101
    let loveScore = arc4random_uniform(101)
//    if else use if score is > ?? then happy or if score < ?? then not happy line showing in debug area
    if loveScore > 80 {
//        also showing this number in debug are so use \(loveScore)
        return "You Love score is \(loveScore). you love each other to much"
//        score is > ? < ? than so this line trigger in debug area
    } else if loveScore > 40 && loveScore <= 80 {
        return "You Love score is \(loveScore). you love each other to little bit"
    }
    else {
        return "Your Love score is \(loveScore).No Love possible, you'll be forever alone"
    }
}
//type the name of love coples for get the result
print(loveCalculator(yourName: "jasbeer singh", theirName: "waheguru ji"))



//&& is AND, || is OR, != is NOT
