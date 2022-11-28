//
//  ViewController.swift
//  Personal Quiz
//
//  Created by mac on 11/25/22.
//

import UIKit

class QuestionsViewControler: UIViewController {

    // MARK: - IBOutlets
    
    
    // MARK: - Private properties
    
    private let questions = Question.getQuestions()
    private var answersChosen: [Answer] = []
    private var questionIndex = 0
    private var currentAnswers: [Answer] {
        questions[questionIndex].answers
    }
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else { return }
        resultVC.answers = answersChosen
    }
    
    // MARK: - IBActions


}

