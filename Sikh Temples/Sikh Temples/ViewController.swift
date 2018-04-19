//
//  ViewController.swift
//  Sikh Temples
//
//  Created by Jasbeer Singh on 18/04/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomGurudwara: Int = 0
    
    let guruwaraArray = ["gurdwara1", "gurdwara2", "gurdwara3", "gurdwara4", "gurdwara5", "gurdwara6", "gurdwara7", "gurdwara8", "gurdwara9", "gurdwara10", "gurdwara11", "gurdwara12"]
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomGurudwaraImages()
    }

    @IBAction func nextPhotoButton(_ sender: Any) {
        randomGurudwaraImages()
    }
    
    func randomGurudwaraImages(){
        randomGurudwara = Int(arc4random_uniform(12))
        imageView.image = UIImage(named: guruwaraArray[randomGurudwara])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomGurudwaraImages()
    }
}

