//
//  QuizBra.swift
//  Quizzler-iOS13
//
//  Created by user on 2020/3/24.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation
class QuizBrain{
    var questionNumber = 0
    var score = 0
    
    let quiz = [
    Question(q: "教學有沒有超過75公斤", a: "True"),
    Question(q: "yozn有yt頻道嗎", a: "True"),
    Question(q: "下列細胞何止具有吞噬作用", a:"嗜酸")
    ]
    func getQuestion() -> String {
        return quiz[questionNumber].text
    }
    func getprogress() -> Float {
        return Float(questionNumber)/Float(quiz.count)
    }
    func getScore() -> Int {
        return score
    }
    func nextQuestion()  {
        if questionNumber + 1 < quiz.count {
            questionNumber = questionNumber + 1
        }
        else {
            questionNumber = 0
        }
    }
    func checkAnswer(userAnswer:String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        }
        else{
            score -= 1
            return false
        }
    }
}
