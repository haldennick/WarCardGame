//
//  ViewController.swift
//  WarCardGame
//
//  Created by Carlos Sepulveda on 07-01-20.
//  Copyright © 2020 Carlos Sepulveda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var
        leftImageView:
        UIImageView!
    
    @IBOutlet weak var
        rightImageView:
        UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)

        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber{
            //left side wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }else if leftNumber < rightNumber{
            //right side wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }else if leftNumber == rightNumber{
            //TIE
            /*rightScore += 1
            leftScore += 1
            rightScoreLabel.text = String(rightScore)
            leftScoreLabel.text = String(leftScore)*/
        }
    }
    
}

