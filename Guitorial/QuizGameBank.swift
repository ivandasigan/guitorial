//
//  QuizGameBank.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/11/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import Foundation


class QuizGameBank{
    
    var quizQuestArr = [QuizGame]()
    
    init() {
        quizQuestArr.append(QuizGame("A", answers: "A  Major"))
        quizQuestArr.append(QuizGame("Bm", answers: "B  Minor"))
        quizQuestArr.append(QuizGame("C", answers: "C  Major"))
        quizQuestArr.append(QuizGame("B", answers: "B  Major"))
        quizQuestArr.append(QuizGame("Cm", answers: "C  Minor"))
        quizQuestArr.append(QuizGame("G", answers: "G  Major"))
        quizQuestArr.append(QuizGame("Dm", answers: "D  Minor"))
        quizQuestArr.append(QuizGame("F", answers: "F  Major"))
        quizQuestArr.append(QuizGame("E", answers: "E  Major"))
        quizQuestArr.append(QuizGame("D", answers: "D  Major"))
        
        
    }
    
}
