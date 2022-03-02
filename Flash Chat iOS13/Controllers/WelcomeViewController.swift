//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = ""
        
        let titleText = "⚡️FlashChat"
        
        for (index, letter) in titleText.enumerated() {
            Timer.scheduledTimer(withTimeInterval: 0.1 * Double(index), repeats: false) { [weak self] (timer) in
                self?.titleLabel.text?.append(letter)
            }
        }
    }
    

}
