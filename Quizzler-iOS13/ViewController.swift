//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [
        Quiz(q: "A slug's blood is green.", a: "True"),
        Quiz(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Quiz(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Quiz(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Quiz(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Quiz(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Quiz(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Quiz(q: "Google was originally called 'Backrub'.", a: "True"),
        Quiz(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Quiz(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Quiz(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Quiz(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        if userAnswer == quiz[questionNumber].answer {
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
        }
        
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        questionText.text = quiz[questionNumber].title
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
        progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
    }
    
    
    
}

