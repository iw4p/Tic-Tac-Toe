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
    
    // MARK: Actions
    @IBAction func firstButton(_ sender: Any) {
        buttons[0].titleLabel?.text = ""
    }
    
    @IBAction func secondButton(_ sender: Any) {
        buttons[1].titleLabel?.text = ""
    }
    
    @IBAction func thirdButton(_ sender: Any) {
        buttons[2].titleLabel?.text = ""
    }
    
    @IBAction func fourthButton(_ sender: Any) {
        buttons[3].titleLabel?.text = ""
    }
    
    @IBAction func fifthButton(_ sender: Any) {
        buttons[4].titleLabel?.text = ""
    }
    
    @IBAction func sixthButton(_ sender: Any) {
        buttons[5].titleLabel?.text = ""
    }
    
    @IBAction func seventhButton(_ sender: Any) {
        buttons[6].titleLabel?.text = ""
    }
    
    @IBAction func eighthButton(_ sender: Any) {
        buttons[7].titleLabel?.text = ""
    }
    
    @IBAction func ninthButton(_ sender: Any) {
        buttons[9].titleLabel?.text = ""
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func interface() {
        bottomLabel.rotate(degrees: 180)
    }


}


