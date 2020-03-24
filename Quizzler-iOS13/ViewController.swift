//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Qlabal: UILabel!
    @IBOutlet weak var tButton: UIButton!
    @IBOutlet weak var fButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var UIlabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        updateUI()
        // Do any additional setup after loading the view.
    }
    @IBAction func anserbutton(_ sender: UIButton) {
        let userAnser = sender.currentTitle!
        let tf = quizBrain.checkAnswer(userAnswer: userAnser)
        if tf {
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        quizBrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    
    @objc func updateUI(){
        
        Qlabal.text = quizBrain.getQuestion()
        progressBar.progress = quizBrain.getprogress()
        UIlabel.text = "Score:\(quizBrain.getScore())"
        tButton.backgroundColor = UIColor.clear
        fButton.backgroundColor = UIColor.clear
        if quizBrain.questionNumber == 2{
            tButton.titleLabel?.text = "嗜酸"
            fButton.titleLabel?.text = "嗜鹼"
//            tButton.titleLabel?.sizeToFit()
//            fButton.titleLabel?.sizeToFit()
            
        }
//        else{
//            tButton.titleLabel?.text = "True"
//            fButton.titleLabel?.text = "False"
//        }
    }

}

