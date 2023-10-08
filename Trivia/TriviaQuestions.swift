//
//  TriviaQuestions.swift
//  Trivia
//
//  Created by Tamara Regalado Quiroz on 10/7/23.
//

import Foundation
import UIKit

struct TriviaQuestions{
//    let questionNumber: String
    let questionCode: QuestionCode
    let questionChoices: [String]
   // let category: String
    //let category: String
//    let mcqTwo: String
//    let mcqThree: String
//    let mcqFour: String

}


enum QuestionCode{
    case categoryScience
    case categoryEntertainment
    case categoryMath
    
    
    var questionNum: String{
        switch self{
        case .categoryScience:
            return "Question 1/3 "
        case .categoryEntertainment:
            return "Question 2/3"
        case .categoryMath:
            return "Question 3/3"

        }
    }
    
    var category: String{
        switch self{
        case .categoryScience:
            return "Science: Oceans "
        case .categoryEntertainment:
            return "Entertainment: Movies"
        case .categoryMath:
            return "Math: Multiplication"
        }
    }
    
    
    var question: String{
        switch self{
        case .categoryScience:
            return "What is the deepest part of the ocean? "
        case .categoryEntertainment:
            return "What is the oldest disney movie?"
        case .categoryMath:
            return "What is 2 x 2?"
        }
    }
    
//    var choiceOne: UIButton{
//        switch self{
//        case .categoryScience:
//             setTitle("James Cook", for: normal)
//        case .categoryEntertainment:
//            return "Entertainment: Movies"
//        case .categoryMath:
//            return "Math: Multiplication""}
//    }

    var image: UIImage? {
        switch self{
        case .categoryScience:
            return UIImage(named: "questionOne")
        case .categoryEntertainment:
            return UIImage(named: "questionTwo")
        case .categoryMath:
            return UIImage(named: "questionThree")
        }
    }
}
