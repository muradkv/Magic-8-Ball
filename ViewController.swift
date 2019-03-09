//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by murad on 09/03/2019.
//  Copyright © 2019 murad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        generateImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        generateImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        generateImage()
    }
    
    func generateImage() {
        
        let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
        
        let randomBallImage = Int.random(in: 0...4)
        
        ballImageView.image = UIImage.init(named: ballArray[randomBallImage])
        
    }
}

