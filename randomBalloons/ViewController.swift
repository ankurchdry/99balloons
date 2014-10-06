//
//  ViewController.swift
//  randomBalloons
//
//  Created by ankurchdry on 10/5/14.
//  Copyright (c) 2014 ankurchdry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberOfBalloons: UILabel!
    
    @IBOutlet weak var myImageView: UIImageView!
    
    var myBalloonsImage:[balloons] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
     var myBalloons = balloons()
         myBalloons.numberOfBalloons = 1
         myBalloons.image = UIImage (named: "RedBalloon1.jpg")
        
        numberOfBalloons.text = "\(myBalloons.numberOfBalloons)"
        myImageView.image = myBalloons.image
        
        var secondBalloons = balloons()
        secondBalloons.numberOfBalloons = 2
        secondBalloons.image = UIImage (named: "RedBalloon2.jpg")
        
        var thirdBalloons = balloons()
        thirdBalloons.numberOfBalloons = 3
        thirdBalloons.image = UIImage (named: "RedBalloon3.jpg")
        
        var fourthBalloons = balloons()
        fourthBalloons.numberOfBalloons = 4
        fourthBalloons.image = UIImage (named: "RedBalloon4.jpg")
        
        myBalloonsImage += [myBalloons,secondBalloons,thirdBalloons,fourthBalloons]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func whenNextButtonPressed(sender: UIBarButtonItem) {
        
        var randomindex = Int(arc4random_uniform(UInt32(myBalloonsImage.count)))
        let nextBalloonPic = myBalloonsImage[randomindex]
        
        numberOfBalloons.text = "\(nextBalloonPic.numberOfBalloons)"
        myImageView.image = nextBalloonPic.image
        
    }


}

