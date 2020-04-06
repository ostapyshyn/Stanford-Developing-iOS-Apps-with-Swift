//
//  ViewController.swift
//  Concentration
//
//  Created by Volodymyr Ostapyshyn on 26.03.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit
import Foundation



class ViewController: UIViewController {
    
    lazy var game: Concentration = Concentration(numberOfPairsOfCards: cardButtons.count / 2)
    
    @IBOutlet var flipCountLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    
    
    
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        } else {
            print("chosen card was not in cardButtons")
        }
        //print("card number \(cardNumber)")
        //        flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        
    }
    func updateViewFromModel() {
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: .normal)
                button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            } else {
                button.setTitle("", for: .normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 0.441413555, blue: 0.261328571, alpha: 0) : #colorLiteral(red: 1, green: 0.441413555, blue: 0.261328571, alpha: 1)
            }
        }
        
        
    }
    
    var emoji = [Int: String]()
    var emojiChoices = ["🦇", "😱","🙀","😈","🎃","👻","🍭","🍬","🍎"]
    
    func emoji(for card: Card) -> String {
        //let chosenEmoji = emoji[card.identifier]
        if emoji[card.identifier] == nil, emojiChoices.count > 0 {
            let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
            emoji[card.identifier] = emojiChoices.remove(at: randomIndex)
        }
        
        return emoji[card.identifier] ?? "?"
        
    }
    
    
    













//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }


}

