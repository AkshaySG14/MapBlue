//
//  ViewController.swift
//  MapBlue
//
//  Created by Akshay Subramaniam on 5/3/18.
//  Copyright © 2018 MediocreAtBest. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension UIViewController {
    // Sets up the ability to hide a keyboard upon the screen recognizing a gesture.
    func setupKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    // Actually dismisses keyboard.
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
