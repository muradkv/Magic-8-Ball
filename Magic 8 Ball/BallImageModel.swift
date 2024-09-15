//
//  BallModel.swift
//  Magic 8 Ball
//
//  Created by murad on 15.09.2024.
//

import UIKit

struct BallImageModel {
    private static let imageNames = [
        "ball1", "ball2", "ball3", "ball4", "ball5"
    ]
    
    static func randomImage() -> UIImage? {
        guard let randomName = imageNames.randomElement() else {
            return nil
        }
        
        return UIImage(named: randomName)
    }
}
