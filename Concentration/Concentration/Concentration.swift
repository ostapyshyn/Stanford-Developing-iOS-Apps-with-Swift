//
//  Concentration.swift
//  Concentration
//
//  Created by Volodymyr Ostapyshyn on 29.03.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import Foundation

class Concentration {
    
    var cards = [Card]()
    
    func chooseCard(at index: Int) {
        
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
            
        }
        // TODO: Shuffle the cards
        cards.shuffle()
        
    }
    
}
