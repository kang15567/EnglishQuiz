//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Kang on 2021/07/07.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
                Question(q: "initialize", a: ["설정", "초기화", "변환"], c: "초기화"),
                Question(q: "modified", a: ["개선", "찾다", "빼내다"], c: "개선"),
                Question(q: "ignore", a: ["변경하다", "제한하다", "무시하다"], c: "무시하다"),
                Question(q: "constant", a: ["상수", "변수", "인수"], c: "상수"),
                Question(q: "release", a: ["특징", "출시", "존재하다"], c: "출시"),
                Question(q: "normalize", a: ["최적화", "요악하다", "정규화"], c: "정규화"),
                Question(q: "description", a: ["비교", "설명", "요약"], c: "설명"),
                Question(q: "reject", a: ["거절하다", "과정", "성능"], c: "거절하다"),
                Question(q: "access", a: ["자원", "제어", "구조"], c: "제어"),
                Question(q: "exception", a: ["허가", "참고", "예외"], c: "예외")


    ]
    var questionNumber = 0
    var score = 0
    
    mutating func cheakAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correctAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getChoiceOneText() -> String {
        return quiz[questionNumber].answer[0] as! String
    }
    
    func getChoiceTwoText() -> String {
        return quiz[questionNumber].answer[1] as! String
    }
    
    func getChoiceThreeText() -> String {
        return quiz[questionNumber].answer[2] as! String
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 == quiz.count {
            questionNumber = 0
            score = 0
        } else {
            questionNumber += 1
        }
    }
}
