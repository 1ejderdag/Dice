//
//  ViewController.swift
//  Dice
//
//  Created by Ejder Dağ on 24.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImage2: UIImageView!
    @IBOutlet weak var diceImage1: UIImageView!
    
    var diceImages = [UIImage(named: "DiceOne"),UIImage(named: "DiceTwo"),UIImage(named: "DiceThree"),UIImage(named: "DiceFour"),UIImage(named: "DiceFive"),UIImage(named: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        diceImage1.image = diceImages.randomElement()!
        diceImage2.image = diceImages.randomElement()!
    }

    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
            
            // Animate
            UIView.animate(withDuration: 0.5, animations: {
                //alpha
                self.diceImage1.alpha = 0.2
                self.diceImage2.alpha = 0.2
                //change
                self.diceImage1.image = self.diceImages.randomElement()!
                self.diceImage2.image = self.diceImages.randomElement()!
                //rotate
                self.diceImage1.transform = CGAffineTransform(rotationAngle: 110 * .pi / 180)
                self.diceImage2.transform = CGAffineTransform(rotationAngle: 110 * .pi / 180)
                
                
                            
            },completion: { (true) in
                
                UIView.animate(withDuration: 0.5, animations: {
                    
                    self.diceImage1.alpha = 0.8
                    self.diceImage2.alpha = 0.8
                    self.diceImage1.image = self.diceImages.randomElement()!
                    self.diceImage2.image = self.diceImages.randomElement()!
                    self.diceImage1.transform = CGAffineTransform(rotationAngle: 0 * .pi / 180)
                    self.diceImage2.transform = CGAffineTransform(rotationAngle: 0 * .pi / 180)
                },completion: { (true) in
                    
                    UIView.animate(withDuration: 0.5, animations: {
                        
                        self.diceImage1.alpha = 0.2
                        self.diceImage2.alpha = 0.2
                        self.diceImage1.image = self.diceImages.randomElement()!
                        self.diceImage2.image = self.diceImages.randomElement()!

                        
                        self.diceImage1.transform = CGAffineTransform(rotationAngle: 110 * .pi / 180)
                        self.diceImage2.transform = CGAffineTransform(rotationAngle: 110 * .pi / 180)
                    },completion: { (true) in
                        
                        UIView.animate(withDuration: 0.5, animations: {
                            
                            self.diceImage1.alpha = 0.8
                            self.diceImage2.alpha = 0.8
                            self.diceImage1.image = self.diceImages.randomElement()!
                            self.diceImage2.image = self.diceImages.randomElement()!
                            self.diceImage1.transform = CGAffineTransform(rotationAngle: 0 * .pi / 180)
                            self.diceImage2.transform = CGAffineTransform(rotationAngle: 0 * .pi / 180)
                            
                        },completion: {(true) in
                            
                            UIView.animate(withDuration: 0.5, animations: {
                                
                                self.diceImage1.alpha = 1
                                self.diceImage2.alpha = 1
                                self.diceImage1.image = self.diceImages.randomElement()!
                                self.diceImage2.image = self.diceImages.randomElement()!
                               
                                
                                
                            })
                                
                            })
                            
                        })
                    })
                })
        
    }
    
}

