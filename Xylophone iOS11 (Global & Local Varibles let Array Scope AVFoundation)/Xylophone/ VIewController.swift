//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
//this pakage allow us to audio video compunent in the iPhone
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
   
/*    var audioPlayer : AVAudioPlayer!
//(Scope) create var selectedSoundFiles cuz I need a Global Variable for Accessible for all locals
    var selectedSoundFiles : String = ""
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
//        selected sound file will play with every diffrent button using (tag) of the button
//       also this line of code set the location of the sound files from soundArray
//        -1 use for cuz array start from 0 but tag start from 1 so need to equal both so use it
        selectedSoundFiles = soundArray[sender.tag - 1]
//        print the file name
        print(selectedSoundFiles)
        
//        func contain the codes for playing music
         playSound()
}
    func playSound() {
        //        this line of code use the location of the sound files for Audio player
        let soundURL = Bundle.main.url(forResource: selectedSoundFiles, withExtension: "wav")
        
        //(do try and catch) this formula use for im not 100% sure about my sound file lets try it (its Used below)
        /*also if i am not use do catch formula then u need force ur file to play how its do u need to start URL file with try and put try! mark to force it ! mark is for force to play my file im 100% sure about it
         try! audioPlayer = try AVAudioPlayer(contentsOf: soundURL!) */
        //       or
        do {
            //            setup a audio player and the Location URL
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
            //            this is for print the error if any
        catch {
            print(error)
        }
        //        lets play the music with this code
        audioPlayer.play()
    }
}
*/

    
// Without global Verible use local varible for pass the info
// try to use local verible not global
var audioPlayer : AVAudioPlayer!

let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

override func viewDidLoad() {
    super.viewDidLoad()
}

@IBAction func notePressed(_ sender: UIButton) {
 
    // its take input soundFileName from func and sound array for files name [sender.tag input from button]
    playSound(soundFileName: soundArray[sender.tag - 1])
}
//    give func input sound File Name type String
    func playSound(soundFileName : String) {
// its take input soundFileName from func
    let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
 
    do {
 
        audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
    }
 
    catch {
        print(error)
    }
 
    audioPlayer.play()
}
}


