//
//  Question.swift
//  Multiple-Choice-Quiz
//
//  Created by Martin Smith on 11/02/2022.
//

import Foundation

struct Question {
    let question: String
    let alternatives: [String]
    let correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        self.question = q
        self.alternatives = a
        self.correctAnswer = correctAnswer
    }
}
