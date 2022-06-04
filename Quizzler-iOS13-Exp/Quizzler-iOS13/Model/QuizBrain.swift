//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Nimish Mangee on 04/06/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation
struct QuizBrain{
    var questionNumber=0
    var score=0
    
    let quiz=[
        Question(q:"Four  + Two is equal to 6.", a:"True"),
        Question(q:"Five - Three is greater than One", a:"True"),
        Question(q:"Three + Eight is less than Ten", a:"False")
    ]
    
    func getQuestionText()->String{
        return quiz[questionNumber].text;
    }
    func getProgress()->Float{
        return Float(questionNumber)/Float(quiz.count);
    }
    mutating func getScore()->Int{
        return score
    }
    mutating func nextQuestion(){
        if questionNumber<quiz.count-1{
            questionNumber+=1;
        }
        else{
            questionNumber=0;
            score=0;
        }
    }
    mutating func checkAnswer(userAnswer: String)->Bool{
        if userAnswer==quiz[questionNumber].answer{
            score+=1;
            return true;
        }
        else{
            return false;
        }
    }
}
