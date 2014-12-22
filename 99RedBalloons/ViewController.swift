//
//  ViewController.swift
//  99RedBalloons
//
//  Created by Kristofor Lawson on 19/12/2014.
//  Copyright (c) 2014 Lawson Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var balloonImage: UIImageView!
    @IBOutlet weak var balloonLabel: UILabel!

    var balloonNumber = 0
    var currentIndex = 0
    var myRedBalloon = RedBalloons()
    
//    var myBalloons:[RedBalloons] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.balloonLabel.text = "\(balloonNumber++) Red Balloons"
        
//      *** Idea I was playing with to assign balloons to an array
//        var currentBalloon = RedBalloons()
//
//        
//        for redBalloonNumber in 1...99 {
//            
//            currentBalloon.balloonNumber = redBalloonNumber
//            currentBalloon.balloonImage = myRedBalloon.randomBalloon()
//            
//            self.myBalloons.append(currentBalloon)
// 
//        }
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func balloonNextButtonPressed(sender: UIBarButtonItem) {
       
        
        do {
            self.balloonLabel.text = "\(balloonNumber++) Red Balloons"
        } while balloonNumber == currentIndex
        
        currentIndex = balloonNumber
        
        var currentBalloon = balloonImage.image

        do {
            self.balloonImage.image = myRedBalloon.randomBalloon()
        } while currentBalloon == balloonImage.image
        
    }

}

