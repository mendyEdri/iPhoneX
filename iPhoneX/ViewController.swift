//
//  ViewController.swift
//  iPhoneX
//
//  Created by Mendy Edri on 19/12/2017.
//  Copyright © 2017 Mendy Edri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1. what will be in iPhone 8?
        // 2. what will be in iPhone x?
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction
    func doSomeCode(_ sender: UIButton) {
        move()
        UIView.animate(withDuration: 0.4) {
            self.view.layoutIfNeeded()
        }
    }

    func expand() {
        heightConstraint.constant = view.bounds.height
    }
    
    func move() {
        topConstraint.constant = topConstraint.constant == 100 ? 0 : 100
    }
}

