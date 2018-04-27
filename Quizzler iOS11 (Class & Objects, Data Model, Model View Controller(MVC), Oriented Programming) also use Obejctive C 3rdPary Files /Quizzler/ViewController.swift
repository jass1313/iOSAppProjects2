//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
//    Qus Data (QuestionBank) obbject take from Models
//    Qus Bank Class we no required permeters (Blank)
    let allQuestions = QuestionBank()
//    pick the correct answer from Model
    var pickedAnswer : Bool = false
//    use varible to keep track our app which Qus we use in app start from 0/1
    var questionNumber : Int = 0
//create varible for score update
    var score = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//   auto load and set Qus label to show the 1st Qus from bank
//        update the qus each time call from nextQues from func cuz its alreay set for next qus
        nextQuestion()
        
    }

//picked answer true or false buttoon tag 1 use for true, tag 2 use for false
    @IBAction func answerPressed(_ sender: AnyObject) {
//        == for check the equilty
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
//Check answer method call from below (when we call the method(func) need to give only name)
        checkAnswer()
//        going to increace Qus no. 0.1.2.3.4 0/1 thats add +1for increase no.
        questionNumber = questionNumber + 1
//        update the qus each time
        nextQuestion()
    }
    
//update score
//update progress Label
    func updateUI() {
// within ""cotaeshan mark everything is text
//        score label expecting text but u put a score Int so see how to fix "\(score)"
        scoreLabel.text = "Score: \(score)"
//we using QusNumber for update the progressLabel cuz QusNumber Update and Count the qus
        progressLabel.text = "\(questionNumber + 1) / 13"
//for update the progress bar use the code / QUS 13 * with question number but to multi play with number so use CGFloat
//with of the progress bar = total width of screen / 13 cuz Qus 13 * user on which Qus
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
    }
    

    func nextQuestion() {
        //        update the qus each time
//        if else statement if qus is < than or 12 and tell end of quiz
        if questionNumber <= 12 {
        questionLabel.text = allQuestions.list[questionNumber].questionText
//           after Qus next update is score for user use func updateUI which already set for update score
            updateUI()
            
        } else {
            //    show the UI Alert in app
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to start over", preferredStyle: .alert)
            // UI View from restart the quiz
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (alert:UIAlertAction) in
//                start over call from below func
                self.startOver()
            })
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            
//            auto after end the quiz start again from 1
//            questionNumber = 0
            
        }
    
    }
    func checkAnswer() {
//get the answer first call array(allQues.list)[0] and than call answer from correct answer
        let correctAnswer = allQuestions.list[questionNumber].answer
//        print answer in debug area
        if correctAnswer == pickedAnswer {
// i use the 3rd party Objective C library for UI View Answer Correct or wrong after every qusension answer
            ProgressHUD.showSuccess("Correct")
            print("You got it")
//            increace the score by 1
            score = score + 1
//            score += 1
        } else {
            print("wrong")
//
            ProgressHUD.showError("Wrong!")
        }
        
//        let answer = firstQustion.answer
    }
    
    
    
    func startOver() {
//        restart the qus from 1
       questionNumber = 0
//        call the method func cuz next Qus already set to restart Quiz when Quiz is end so we need here for restart
        nextQuestion()
//        reset score label
        score = 0
        
    
    }
    

    

}
