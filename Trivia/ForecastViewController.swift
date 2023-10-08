//
//  ForecastViewController.swift
//  Trivia
//
//  Created by Tamara Regalado Quiroz on 10/6/23.
//

import UIKit

class ForecastViewController: UIViewController {

    @IBOutlet weak var questionNum: UILabel!
    
    @IBOutlet weak var questionCategory: UILabel!
    
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var questionImage: UIImageView!
    
    @IBOutlet weak var mcqOne: UIButton!
    
    @IBOutlet weak var mcqTwo: UIButton!
    
    @IBOutlet weak var mcqThree: UIButton!
    
    @IBOutlet weak var mcqFour: UIButton!
    
    
    private var questionSet = [TriviaQuestions]()
    private var questionNumCurr = 0
    private var numQuestion = 0
    private var correctAnswers = [4, 2, 1]
    private var trackCorrect = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionSet = mockQuestions()
        configure(with: questionSet[numQuestion])
        // Do any additional setup after loading the view.
        
    }
    
    private func resetProgram() {
        numQuestion = 0
        trackCorrect = 0
        configure(with: questionSet[numQuestion])
    }
    
    private func mockQuestions() -> [TriviaQuestions]{
        let mockQuestion1 = TriviaQuestions(questionCode: .categoryScience, questionChoices: ["Twilight Zone", "Midnight Zone", "Abyssal Zone", "Trenches"])
        
        let mockQuestion2 = TriviaQuestions(questionCode: .categoryEntertainment, questionChoices: ["Cinderella", "Snow White and the Seven Dwarfs", "Pinocchio", "Fantasia"])
        
        let mockQuestion3 = TriviaQuestions(questionCode: .categoryMath, questionChoices: ["4", "8", "6", "7"])
        
        return[mockQuestion1, mockQuestion2, mockQuestion3]
    }
    
    private func configure(with questions: TriviaQuestions){
        questionNum.text = questions.questionCode.questionNum
        questionCategory.text = questions.questionCode.category
        question.text = questions.questionCode.question
        questionImage.image = questions.questionCode.image
        mcqOne.setTitle(questions.questionChoices[0], for: .normal)
        mcqTwo.setTitle(questions.questionChoices[1], for: .normal)
        mcqThree.setTitle(questions.questionChoices[2], for: .normal)
        mcqFour.setTitle(questions.questionChoices[3], for: .normal)
    }

   
    private func popButton() {
        print("hi")
        let alert = UIAlertController(title: "Correct Answers: \(trackCorrect)/3", message: "", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title:"Reset", style: .default, handler: {action in self.resetProgram()}))
        
        present(alert, animated: true, completion: nil)

    }
    
    @IBAction func optionOne(_ sender: UIButton) {
        if (correctAnswers[numQuestion] == 1) {
            trackCorrect += 1
        }
        numQuestion = numQuestion + 1
        if (numQuestion == 3) {
            popButton()
        } else {
            configure(with: questionSet[numQuestion])
        }
    }

    @IBAction func optionTwo(_ sender: UIButton) {
        if (correctAnswers[numQuestion] == 2) {
            trackCorrect += 1
        }
        numQuestion = numQuestion + 1
        if (numQuestion == 3) {
            popButton()
        } else {
            configure(with: questionSet[numQuestion])
        }
    }

    @IBAction func optionThree(_ sender: UIButton) {
        if (correctAnswers[numQuestion] == 3) {
            trackCorrect += 1
        }
        numQuestion = numQuestion + 1
        if (numQuestion == 3) {
            popButton()
        } else {
            configure(with: questionSet[numQuestion])
        }
    }

    @IBAction func optionFour(_ sender: UIButton) {
        if (correctAnswers[numQuestion] == 4) {
            trackCorrect += 1
        }
        numQuestion = numQuestion + 1
        if (numQuestion == 3) {
            popButton()
        } else {
            configure(with: questionSet[numQuestion])
        }
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
