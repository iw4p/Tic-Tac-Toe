//
//  GameClass.swift
//  Tic Toc Toe
//
//  Created by Nima Akbarzade on 12/21/1397 AP.
//  Copyright © 1397 AP Nima Akbarzade. All rights reserved.
//

import Foundation

class GameClass {
    
    var level: Int
    var turn: Bool
    var score: Int
    
    init(level:Int,turn:Bool,score:Int) {
        self.level = level
        self.turn = turn
        self.score = score
    }
}
