//
//  ViewController.swift
//  Swift-Tac-Toe
//
//  Created by Wojciech Spychalski on 04/12/14.
//  Copyright (c) 2014 Wojciech Spychalski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var ticTacImg1: UIImageView!
    @IBOutlet var ticTacImg2: UIImageView!
    @IBOutlet var ticTacImg3: UIImageView!
    @IBOutlet var ticTacImg4: UIImageView!
    @IBOutlet var ticTacImg5: UIImageView!
    @IBOutlet var ticTacImg6: UIImageView!
    @IBOutlet var ticTacImg7: UIImageView!
    @IBOutlet var ticTacImg8: UIImageView!
    @IBOutlet var ticTacImg9: UIImageView!
    
    @IBOutlet var ticTacBtn1: UIButton!
    @IBOutlet var ticTacBtn2: UIButton!
    @IBOutlet var ticTacBtn3: UIButton!
    @IBOutlet var ticTacBtn4: UIButton!
    @IBOutlet var ticTacBtn5: UIButton!
    @IBOutlet var ticTacBtn6: UIButton!
    @IBOutlet var ticTacBtn7: UIButton!
    @IBOutlet var ticTacBtn8: UIButton!
    @IBOutlet var ticTacBtn9: UIButton!
    
    @IBOutlet var resetBtn: UIButton!
    
    @IBOutlet var userMessage: UILabel!
    
    var plays = Dictionary<Int,Int>()
    var done = false
    var aiDeciding = false
    
    @IBAction func UIButtonClicked(sender:UIButton) {
        userMessage.hidden = true
        if plays[sender.tag] == nil && !aiDeciding && !done {
            setImageForSpot(sender.tag, player:1)
        }
        
        checkForWin()
        aiTurn()
    }
    
    func setImageForSpot(spot:Int,player:Int){
        var playerMark = player == 1 ? "x" : "o"
        plays[spot] = player
        switch spot {
        case 1:
            ticTacImg1.image = UIImage(named: playerMark)
        case 2:
            ticTacImg1.image = UIImage(named: playerMark)
        case 3:
            ticTacImg1.image = UIImage(named: playerMark)
        case 4:
            ticTacImg1.image = UIImage(named: playerMark)
        case 5:
            ticTacImg1.image = UIImage(named: playerMark)
        case 6:
            ticTacImg1.image = UIImage(named: playerMark)
        case 7:
            ticTacImg1.image = UIImage(named: playerMark)
        case 8:
            ticTacImg1.image = UIImage(named: playerMark)
        case 9:
            ticTacImg1.image = UIImage(named: playerMark)
        default:
            ticTacImg5.image = UIImage(named: playerMark)
            
        }
    }
    
    func checkForWin(){
        
    }
    
    func aiTurn(){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

