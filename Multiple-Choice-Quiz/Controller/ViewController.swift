//
//  ViewController.swift
//  Multiple-Choice-Quiz
//
//  Created by Martin Smith on 11/02/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var progressLabel: UIProgressView!
    var quizBrain = QuizBrain()
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        firstButton.setTitle(quizBrain.getAlternatives(line: 0), for: .normal)
        secondButton.setTitle( quizBrain.getAlternatives(line: 1), for: .normal)
        thirdButton.setTitle(quizBrain.getAlternatives(line: 2), for: .normal)
        scoreLabel.text = "Score : \(quizBrain.getScore())"
        progressLabel.progress = quizBrain.getProgress()
    }


}

