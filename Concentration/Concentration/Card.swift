//
//  Card.swift
//  Concentration
//
//  Created by Volodymyr Ostapyshyn on 29.03.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import Foundation

struct Card {
    
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqeIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
        
    }
    
    
    init() {
        self.identifier = Card.getUniqeIdentifier()
        
    }
    
}
