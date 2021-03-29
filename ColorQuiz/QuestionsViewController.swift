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
        
        switch currentQuestion.type {
        case .question1:
            questionOneStackView.isHidden = false
        case .question2:
            questionTwoStackView.isHidden = false
        case .question3:
            questionThreeStackView.isHidden = false
        case .question4:
            questionFourStackView.isHidden = false
        }
    }
    
}
