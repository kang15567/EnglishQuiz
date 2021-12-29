//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Kang on 2021/07/07.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: Array<Any>
    let correctAnswer: String
    
    init(q: String, a: Array<Any>, c: String) {
        text = q
        answer = a
        correctAnswer = c
    }
}
