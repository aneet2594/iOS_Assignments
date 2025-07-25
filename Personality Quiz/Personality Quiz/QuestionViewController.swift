//
//  QuestionViewController.swift
//  Personality Quiz
//
//  Created by Aneet Kaur on 22/07/25.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var singleButton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton4: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    
    @IBOutlet weak var multipleLabel1: UILabel!
    
    
    @IBOutlet weak var rangedStackView: UIStackView!
    
    var questions: [Question] = [
        Question (
            text: "Which food do you like the most?",
            type: .single,
            answers: [
                Answer(text: "Steak", type: .lion),
                Answer (text: "Fish", type: .cat),
                Answer (text: "Carrots", type: .rabbit),
                Answer (text: "Corn", type: .turtle)
            ]
        ),
        Question (
            text: "Which activities do you enjoy?",
            type: .multiple,
            answers: [
                Answer (text: "Swimming", type: .turtle),
                Answer(text: "Sleeping", type: .cat),
                Answer (text: "Cuddling", type: .rabbit),
                Answer(text: "Eating", type: .lion)
            ]
        ),
        Question (
            text: "How much do you enjoy car rides?",
            type: .ranged,
            answers: [
                Answer(text: "I dislike them", type: .cat),
                Answer(text: "I get a little nervous", type: .rabbit),
                Answer(text: "I barely notice them", type: .turtle),
                Answer(text: "I love them", type: .lion)
            ]
        )
    ]
    
    var questionIndex = 0
    var answerChosen: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        
        let currentQuestion = questions[questionIndex]
        
        switch currentQuestion.type {
        case .single:
            singleStackView.isHidden = false
        case .multiple:
            multipleStackView.isHidden = false
        case .ranged:
            rangedStackView.isHidden = false
        }
    }
}
