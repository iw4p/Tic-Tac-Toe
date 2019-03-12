//
//  ViewController.swift
//  Tic Toc Toe
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
    @IBAction func resetButton(_ sender: Any) {
        
        for button in buttons {
            button.setTitle("", for: .normal)
            button.isEnabled = true
        }
        
        topLabel.text = "Your turn ! X"
        bottomLabel.text = "Wait ! O"
        
        turn = true
    }
    
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
        
//        game.turn = turn
        
        if turn == true {
            buttons[number].setTitle("X", for: .normal)
            buttons[number].isEnabled = false
            topLabel.text = "Your turn ! O"
            bottomLabel.text = "Wait ! X"
            turn = false
        } else if turn == false {
            buttons[number].setTitle("O", for: .normal)
            buttons[number].isEnabled = false
            topLabel.text = "Wait ! O"
            bottomLabel.text = "Your turn ! X"
            turn = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        game.turn = turn
//
//        turn = true
//        game.level = 1
//        game?.turn = true
//        var turns = game.turn
//        turns = true
//        turn = true
//        print("==========")
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


