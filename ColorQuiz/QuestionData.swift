//
//  QuestionData.swift
//  ColorQuiz
//
//  Created by A.M. Student on 3/25/21.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case question1, question2, question3, question4
}

struct Answer {
    var text: String
    var type: CharacterType
}

enum CharacterType: String {
    case dandelion = "Dandelion", sweetPink = "Sweet Pink", oceanDepth = "Ocean Depth", oceanBay = "Ocean Bay"
    
    var definition: String {
        switch self {
        case .dandelion:
            return "You emotionally express how you feel. You're a free spirit and because of that you are distracted and don't know where to bounce. You can't finish something after starting it. You have an ability to become freinds for survival, but when becomin a friend, you will be an outsider. You like being at home very little and playing with your friends, but you also like your own time too. You are quick to notice but if you don't want to, you pretend you don't know anything. You are very expressive and love to talk, a cute piece of charm."
        case .sweetPink:
            return "You're witty, smart, open-minded and fashion conscious. You're also gullible so you tend to be impulsive and quick-tempered. You like to meddle in other peoples lives, and can't say no to someone. You're stubborn and pretend to be submissive on the outside, but lets everyone move in the direction you can enjoy. You put off work as much as you can, and then use the concentration of the whole Universe to finish it all at once."
        case .oceanDepth:
            return "You're not interested in others. You can't make a connection to other first. You use a simple and concise way of speaking. An engineering student style with excellent dexterity and very good at machine operations. You also like bieng active, but the process to do so is annoying to you. You talk a lot excitedly about the field you know, but if it's not you interest, you don't even look at it."
        case .oceanBay:
            return "If it's not going to be perfect, then you don't even start it. You can easily talk to people you've never seen before, but you get shy when together as a group. You don't want to rely on other so you do it by yourself. You have string self-love but low self-esteem and sometimes you feel so depressed. You have lots of thoughts but also a weak mentality. You'd rather sacrifice yourself, then fight. You want to talk logically, but you're in a hurry so you stutter or slow down when you speak."
        }
    }
}
