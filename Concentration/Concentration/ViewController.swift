//
//  ViewController.swift
//  Concentration
//
//  Created by Volodymyr Ostapyshyn on 26.03.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var flipCountLabel: UILabel!
    
    var flipCount = 0
    
    
    @IBAction func touchSecond(_ sender: UIButton) {
        flipCount += 1
        flipCountLabel.text = "Flips: \(flipCount)"
        print("agh! a pumpkin!")
        flipCard(withEmoji: "🎃", on: sender)
    }
    
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        print("agh! a ghost!")
        flipCard(withEmoji: "👻", on: sender)
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    
    
    
    
    
    
    
    

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }


}

