//
//  ViewController.swift
//  Coin Flip
//
//  Created by Nathan Standage on 9/21/17.
//  Copyright © 2017 Nathan Standage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    let pictureProvider = PictureProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        errorLabel.text = ""
        
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        print("MEMORY WARNING!")
    }


    @IBAction func flipButtonPressed(_ sender: UIButton) {
       
        
        if let newPicture = pictureProvider.CoinFlip() {
            
            imageView.image = newPicture
        } else {
            errorLabel.text = "Error!"
        }
        
        
    }
}

