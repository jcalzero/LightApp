//
//  ViewController.swift
//  Light
//
//  Created by JULIEN CALFAYAN on 1/30/20.
//  Copyright © 2020 JULIEN CALFAYAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lightButton: UIButton!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lightButton.layer.borderWidth = 1.0
        lightButton.layer.borderColor = UIColor.white.cgColor
        lightButton.layer.cornerRadius = lightButton.frame.width / 2
        lightButton.layer.cornerRadius = lightButton.frame.width / 2
        lightButton.layer.masksToBounds = true
        lightButton.setTitle("Light", for: .normal)
        lightButton.setTitleColor(.white, for: .normal)
        
        self.view.backgroundColor = .black
    }

    @IBAction func onLightButtonClick(_ sender: Any) {
        if lightButton.titleLabel?.text == "Dark" {
            lightButton.layer.borderWidth = 1.0
            lightButton.layer.borderColor = UIColor.white.cgColor
            lightButton.layer.cornerRadius = lightButton.frame.width / 2
            lightButton.layer.masksToBounds = true
            lightButton.setTitle("Light", for: .normal)
            lightButton.setTitleColor(.white, for: .normal)
            self.view.backgroundColor = .black
        } else {
            lightButton.layer.borderWidth = 1.0
            lightButton.layer.borderColor = UIColor.black.cgColor
            lightButton.layer.cornerRadius = lightButton.frame.width / 2
            lightButton.layer.masksToBounds = true
            lightButton.setTitle("Dark", for: .normal)
            lightButton.setTitleColor(.black, for: .normal)
            
            self.view.backgroundColor = .white
        }
    }
}
