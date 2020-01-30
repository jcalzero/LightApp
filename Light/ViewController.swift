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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        lightButton.setTitle("Dark", for: .normal)
        lightButton.setTitleColor(.black, for: .normal)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onLightButtonClick(_ sender: Any) {
        if lightButton.titleLabel?.text == "Dark" {
            lightButton.setTitle("Light", for: .normal)
            lightButton.setTitleColor(.white, for: .normal)
            self.view.backgroundColor = .black
        } else {
            lightButton.setTitle("Dark", for: .normal)
            lightButton.setTitleColor(.black, for: .normal)
            self.view.backgroundColor = .white
        }
    }
}

