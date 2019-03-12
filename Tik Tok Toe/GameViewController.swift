//
//  ViewController.swift
//  Tik Tok Toe
//
//  Created by Nima Akbarzade on 12/21/1397 AP.
//  Copyright © 1397 AP Nima Akbarzade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet var topLabel: UILabel!
    @IBOutlet var bottomLabel: UILabel!
    @IBOutlet var buttons: [UIButton]!
    
    var game: GameClass!
    var turn = true
    
    // MARK: Actions
    @IBAction func firstButton(_ sender: Any) {
        turn(number: 0)
    }
    
    @IBAction func secondButton(_ sender: Any) {
        turn(number: 1)
    }
    
    @IBAction func thirdButton(_ sender: Any) {
        turn(number: 2)
    }
    
    @IBAction func fourthButton(_ sender: Any) {
        turn(number: 3)
    }
    
    @IBAction func fifthButton(_ sender: Any) {
        turn(number: 4)
    }
    
    @IBAction func sixthButton(_ sender: Any) {
        turn(number: 5)
    }
    
    @IBAction func seventhButton(_ sender: Any) {
        turn(number: 6)
    }
    
    @IBAction func eighthButton(_ sender: Any) {
        turn(number: 7)
    }
    
    @IBAction func ninthButton(_ sender: Any) {
        turn(number: 8)
    }
    
    func turn(number: Int) {
        if turn == true {
            buttons[number].setTitle("Chosen", for: .normal)
            turn = false
        } else if turn == false {
            buttons[number].setTitle("UnChosen", for: .normal)
            turn = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        game.level = 1
//        game.score = 0
        turn = true

//        interface()
//        gameRule()
        
    }
    
    func gameRule() {

        if game.turn {
            topLabel.text = "Your turn !"
            bottomLabel.text = "Wait !"
        } else {
            topLabel.text = "Wait !"
            bottomLabel.text = "Your turn !"
        }
        
    }
    
    func interface() {
        bottomLabel.rotate(degrees: 180)
    }


}


