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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if quizBrain.checkAnswer(sender.currentTitle!){
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.orange
        }
        quizBrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target:self, selector: #selector(updateUI), userInfo:nil, repeats: false)
        
    }
    
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        firstButton.setTitle(quizBrain.getAlternatives(line: 0), for: .normal)
        secondButton.setTitle( quizBrain.getAlternatives(line: 1), for: .normal)
        thirdButton.setTitle(quizBrain.getAlternatives(line: 2), for: .normal)
        scoreLabel.text = "Score : \(quizBrain.getScore())"
        progressLabel.progress = quizBrain.getProgress()
        firstButton.backgroundColor = UIColor.clear
        secondButton.backgroundColor = UIColor.clear
        thirdButton.backgroundColor = UIColor.clear
    }


}

