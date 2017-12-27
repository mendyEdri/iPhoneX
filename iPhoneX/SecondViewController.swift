//
//  SecondViewController.swift
//  iPhoneX
//
//  Created by Mendy Edri on 25/12/2017.
//  Copyright © 2017 Mendy Edri. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createButtonWithConstraint()
    }
    
    @IBAction
    func animateView(_ sender: Any) {
        move()
        UIView.animate(withDuration: 0.4) {
            self.view.layoutIfNeeded()
        }
    }
    
    func move() {
        let down: CGFloat = 100
        let up: CGFloat = 0
        topConstraint.constant = topConstraint.constant >= down ? up : down
    }
    
    func createButtonWithConstraint() {
        // creating the button
        let button = UIButton.init()
        button.setTitle("Close", for: .normal)
        button.backgroundColor = UIColor.lightGray
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        // constraint for top, height, width & leading
        
        if #available(iOS 11.0, *) {
            button.topAnchor.constraintEqualToSystemSpacingBelow(view.safeAreaLayoutGuide.topAnchor, multiplier: 1.0).isActive = true
        } else {
            // Fallback on earlier versions
            let top = NSLayoutConstraint.init(item: button, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 0)
            view.addConstraint(top)
        }
        let leading = NSLayoutConstraint.init(item: button, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 14)
        let height = NSLayoutConstraint.init(item: button, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 44)
        let width = NSLayoutConstraint.init(item: button, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 100)
        view.addConstraints([leading, width, height])
    }
    
    func topConstraint(button: UIButton) {
        // add top anchor margin
        if #available(iOS 11.0, *) {
            button.topAnchor.constraintEqualToSystemSpacingBelow(view.safeAreaLayoutGuide.topAnchor, multiplier: 1.0).isActive = true
        } else {
            // Fallback on earlier versions
            let top = NSLayoutConstraint.init(item: button, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 0)
            view.addConstraint(top)
        }
    }
    
}
