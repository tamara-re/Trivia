//
//  ForecastViewController.swift
//  Trivia
//
//  Created by Tamara Regalado Quiroz on 10/6/23.
//

import UIKit

class ForecastViewController: UIViewController {

    @IBOutlet weak var questionNum: UILabel!
    
    @IBOutlet weak var categoryQuestion: UILabel!
    
    @IBOutlet weak var imageQuestion: UIImageView!
    
    @IBOutlet weak var optionOne: UILabel!
    
    @IBOutlet weak var optionTwo: UILabel!
    
    @IBOutlet weak var optionThree: UILabel!
    
    @IBOutlet weak var optionFour: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let fakeQuestions = TriviaQuestions(questionNumber:    .categoryScience)
        configure(with: fakeQuestions)
    }
    private func configure(with questions: TriviaQuestions){
        imageQuestion.image = questions.questionNumber.image
        
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
