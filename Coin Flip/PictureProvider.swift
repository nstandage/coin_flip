//
//  PictureProvider.swift
//  Coin Flip
//
//  Created by Nathan Standage on 9/21/17.
//  Copyright © 2017 Nathan Standage. All rights reserved.
//

import UIKit


struct PictureProvider {

    let pictures: [UIImage?] = [
        UIImage(named: "Heads.png"),
    UIImage(named: "Tails.png")
    ]
    
    func CoinFlip() -> UIImage? {
        print("\(pictures.count)")
        let randomNumber = arc4random_uniform(UInt32(pictures.count))
        let randomInt = Int(randomNumber)
        guard let picture = pictures[randomInt] else {
            return nil
        }
        return picture
    
    }
    
}

