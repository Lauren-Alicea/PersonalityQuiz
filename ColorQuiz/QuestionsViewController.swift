import UIKit

class QuestionsViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var questionOneStackView: UIStackView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var questionTwoStackView: UIStackView!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    
    @IBOutlet weak var questionThreeStackView: UIStackView!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button12: UIButton!
    
    @IBOutlet weak var questionFourStackView: UIStackView!
    @IBOutlet weak var button13: UIButton!
    @IBOutlet weak var button14: UIButton!
    @IBOutlet weak var button15: UIButton!
    @IBOutlet weak var button16: UIButton!
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    var questions: [Question] = [
        Question(text: "Friends who know you best say you are what?", type: .question1, answers: [
            Answer(text: "Energetic", type: .sweetPink),
            Answer(text: "Passionate", type: .oceanBay),
            Answer(text: "Timid", type: .dandelion),
            Answer(text: "Impulsive", type: .oceanDepth)
        ]),
        Question(text: "What animal would you rather be?", type: .question2, answers: [
            Answer(text: "Bat-eared Fox", type: .dandelion),
            Answer(text: "Sea Hors", type: .oceanBay),
            Answer(text: "Jelly Fish", type: .sweetPink),
            Answer(text: "Opossum", type: .oceanDepth)
        ]),
        Question(text: "What quote speaks to you?", type: .question3, answers: [
            Answer(text: "When everything feels like a uphill struggle, just think of the view from the top.", type: .oceanBay),
            Answer(text: "I no longer ave the energy for meaningless friendships, forced interactions, or unnecssary conversations.", type: .oceanDepth),
            Answer(text: "People never forget how you made them feel.", type: .dandelion),
            Answer(text: "Break the rules, enjoy your life because you only live once.", type: .sweetPink)
        ]),
        Question(text: "What's your favorite thing to do in your free time?", type: .question4, answers: [
            Answer(text: "Read", type: .oceanDepth),
            Answer(text: "Go outside", type: .dandelion),
            Answer(text: "Party", type: .sweetPink),
            Answer(text: "Game", type: .oceanBay)
        ])
    ]
    
    var questionIndex = 0
    
    var answerChosen: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    func updateUI() {
        
        questionOneStackView.isHidden = true
        questionTwoStackView.isHidden = true
        questionThreeStackView.isHidden = true
        questionFourStackView.isHidden = true
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        
        let currentQuestion = questions[questionIndex]
        let currentAnswer = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated: true)
        
        switch currentQuestion.type {
        case .question1:
            updateQuestionOneStackView(using: currentAnswer)
        case .question2:
            updateQuestionTwoStackView(using: currentAnswer)
        case .question3:
            updateQuestionThreeStackView(using: currentAnswer)
        case .question4:
            updateQuestionFourStackView(using: currentAnswer)
        }
    }
    func updateQuestionOneStackView(using answers: [Answer]) {
        questionOneStackView.isHidden = false
        button1.setTitle(answers[0].text, for: .normal)
        button2.setTitle(answers[1].text, for: .normal)
        button3.setTitle(answers[2].text, for: .normal)
        button4.setTitle(answers[3].text, for: .normal)
    }
    func updateQuestionTwoStackView(using answers: [Answer]) {
        questionTwoStackView.isHidden = false
        button5.setTitle(answers[0].text, for: .normal)
        button6.setTitle(answers[1].text, for: .normal)
        button7.setTitle(answers[2].text, for: .normal)
        button8.setTitle(answers[3].text, for: .normal)
    }
    func updateQuestionThreeStackView(using answers: [Answer]) {
        questionThreeStackView.isHidden = false
        button9.setTitle(answers[0].text, for: .normal)
        button10.setTitle(answers[1].text, for: .normal)
        button11.setTitle(answers[2].text, for: .normal)
        button12.setTitle(answers[3].text, for: .normal)
    }
    func updateQuestionFourStackView(using answers: [Answer]) {
        questionFourStackView.isHidden = false
        button13.setTitle(answers[0].text, for: .normal)
        button14.setTitle(answers[1].text, for: .normal)
        button15.setTitle(answers[2].text, for: .normal)
        button16.setTitle(answers[3].text, for: .normal)
    }
    @IBAction func questionOneButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case button1:
            answerChosen.append(currentAnswers[0])
        case button2:
            answerChosen.append(currentAnswers[0])
        case button3:
            answerChosen.append(currentAnswers[0])
        case button4:
            answerChosen.append(currentAnswers[0])
        default:
            break
        }
        
        nextQuestion()
    }
    @IBAction func questionTwoButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case button5:
            answerChosen.append(currentAnswers[0])
        case button6:
            answerChosen.append(currentAnswers[0])
        case button7:
            answerChosen.append(currentAnswers[0])
        case button8:
            answerChosen.append(currentAnswers[0])
        default:
            break
        }
        
        nextQuestion()
    }
    @IBAction func questionThreeButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case button9:
            answerChosen.append(currentAnswers[0])
        case button10:
            answerChosen.append(currentAnswers[0])
        case button11:
            answerChosen.append(currentAnswers[0])
        case button12:
            answerChosen.append(currentAnswers[0])
        default:
            break
        }
        
        nextQuestion()
    }
    @IBAction func questionFourButtonPresssed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case button13:
            answerChosen.append(currentAnswers[0])
        case button14:
            answerChosen.append(currentAnswers[0])
        case button15:
            answerChosen.append(currentAnswers[0])
        case button16:
            answerChosen.append(currentAnswers[0])
        default:
            break
        }
        
        nextQuestion()
    }
        
        func nextQuestion() {
            questionIndex += 1
            
            if questionIndex < questions.count {
                updateUI()
            } else {
                performSegue(withIdentifier: "ResultsSegue", sender: nil)
            }
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "ResultsSegue" {
                let resultsViewController = segue.destination as! ResultsViewController
                resultsViewController.responses = answerChosen
            }
        }
    }
