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
    var array = [Int:Bool]()
    var result = false
    // MARK: Actions
    
    func reset () {
        for button in buttons {
            button.setTitle("", for: .normal)
            button.isEnabled = true
        }
        
        array = [Int:Bool]()
        
        topLabel.text = "Your turn ! X"
        bottomLabel.text = "Wait ! O"
        
        turn = true
        result = false
    }
    
    
    @IBAction func resetButton(_ sender: Any) {
        
        reset()
     
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
        
        
        if turn == true {
            buttons[number].setTitle("X", for: .normal)
            buttons[number].isEnabled = false
            topLabel.text = "Your turn ! O"
            bottomLabel.text = "Wait ! X"
            turn = false
            array[number] = true
            check()
        } else if turn == false {
            buttons[number].setTitle("O", for: .normal)
            buttons[number].isEnabled = false
            topLabel.text = "Wait ! O"
            bottomLabel.text = "Your turn ! X"
            turn = true
            array[number] = false
            check()
        }
        print(array)
    }
    
    func check() {
        
        if array[0] == true && array[1] == true && array[2] == true ||
            array[0] == false && array[1] == false && array[2] == false {
            print("YOU WIN")
            result = true
        }
        
        else if array[0] == true && array[3] == true && array[6] == true ||
            array[0] == false && array[3] == false && array[6] == false {
            result = true
        }
        
        else if array[0] == true && array[4] == true && array[8] == true ||
            array[0] == false && array[4] == false && array[8] == false {
            result = true
        }
        
        else if array[1] == true && array[4] == true && array[7] == true ||
            array[1] == false && array[4] == false && array[7] == false {
            result = true
        }
        
        else if array[2] == true && array[5] == true && array[8] == true ||
            array[2] == false && array[5] == false && array[8] == false {
            result = true
        }
        
        else if array[2] == true && array[4] == true && array[6] == true ||
            array[2] == false && array[4] == false && array[6] == false {
            result = true
        }
        
        else if array[3] == true && array[4] == true && array[5] == true ||
            array[3] == false && array[1] == false && array[5] == false {
            result = true
        }
        
        else if array[6] == true && array[7] == true && array[8] == true ||
            array[6] == false && array[7] == false && array[8] == false {
            result = true
        }
        
        if result == true {
            let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                case .default:
                    self.reset()

                    
                case .cancel:
                    print("cancel")
                    
                case .destructive:
                    print("destructive")
                    
                    
                }}))
            self.present(alert, animated: true, completion: nil)
        } else if array.count == 9 && result == false {
            let alert = UIAlertController(title: "Alert", message: "DRAW", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                case .default:
                    self.reset()
                    
                    
                case .cancel:
                    print("cancel")
                    
                case .destructive:
                    print("destructive")
                    
                    
                }}))
            self.present(alert, animated: true, completion: nil)
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


