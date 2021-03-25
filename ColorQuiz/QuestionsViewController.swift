import UIKit

class QuestionsViewController: UIViewController {
    
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
            Answer(text: "I need a BF, B - Billion F - Freaking dollars", type: .dandelion),
            Answer(text: "Break the rules, enjoy your life because you only live once.", type: .sweetPink)
        ]),
        Question(text: "What's your favorite thing to do in your free time?", type: .question4, answers: [
            Answer(text: "Read", type: .oceanDepth),
            Answer(text: "Go outside", type: .dandelion),
            Answer(text: "Party", type: .sweetPink),
            Answer(text: "Game", type: .oceanBay)
        ])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
