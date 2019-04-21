//
//  ViewController.swift
//  Torch
//
//  Created by Egor Pats on 4/21/19.
//  Copyright © 2019 Egor Pats. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PowerButton: UIButton!
    var powerOn = UIImage(named: "TorchOn")
    var powerOff = UIImage(named: "TorchOff")
    var status = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func PushPowerButton(_ sender: Any) {
        status = !status
        setPowerImage(status: status)
        
    }
    
    func setPowerImage(status: Bool){
        if(status){
            self.PowerButton.setImage(powerOn, for: UIControl.State.normal)
        } else {
            self.PowerButton.setImage(powerOff, for: UIControl.State.normal)
        }
    }
}

