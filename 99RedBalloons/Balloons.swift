//
//  Balloons.swift
//  99RedBalloons
//
//  Created by Kristofor Lawson on 19/12/2014.
//  Copyright (c) 2014 Lawson Media. All rights reserved.
//

import Foundation
import UIKit

struct RedBalloons {
    
    var balloonNumber = 0
    var balloonImage = UIImage(named: "")
    
    func randomBalloon () -> UIImage
    {
        let randomBalloonNumber = Int(arc4random_uniform(UInt32(3)))
    
        var balloonImages = ["RedBalloon1.jpg", "RedBalloon2.jpg", "RedBalloon3.jpg", "RedBalloon4.jpg"]
        
        var randomRedBalloon = UIImage(named: "\(balloonImages[randomBalloonNumber])")
        
        return randomRedBalloon!
        
    }
    
}