//
//  ViewController.swift
//  Random Name Generator
//
//  Created by IMANOL MUNOZ on 11/29/18.
//  Copyright © 2018 IMANOL MUNOZ. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var nameArray = ["Randy Aguilar", "Alonso Alcantar", "Arya Bhatti", "James Bill", "Roberto Corboda", "Michael Dumitrescu", "Angel Fernandez", "Angel Garcia", "Giovanni Garcia", "Angel Gasca-Cardona", "Nathan Gehrke", "Andrew Georgiou-Dargenio", "Brandon Gomez", "Manuel Hernandez", "Jhonathan Medina", "Imanol Munoz", "Brian Ocampo", "Juan Ocampo", "Daniel Ochoa", "Fabian Ramirez", "Israel Tejeda", "Gustavo Torres"]
    
    @IBOutlet weak var nameChosenLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
    
    @IBAction func nameButtonOnTapped(_ sender: Any) {
        let randomNumber = Int(arc4random_uniform(22))
        nameChosenLabel.text = nameArray[randomNumber]
        print(nameArray[randomNumber])
        let utterance = AVSpeechUtterance(string: "\(nameArray[randomNumber])")
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        utterance.rate = 0.45
        
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
    
    
    
    
}
//segue 
