//
//  SecondViewController.swift
//  ClosureSample
//
//  Created by Kap's on 17/06/20.
//  Copyright © 2020 Kapil. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var didTapButton: ((String, UIImage) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func appleWasTapped(_ sender: Any) {
        didTapButton?("You Chose Apple", UIImage(named: "Apple")!)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func burgerWasTapped(_ sender: Any) {
        didTapButton?("You Chose Burger", UIImage(named: "Burger")!)
        dismiss(animated: true, completion: nil)
    }
    
    
}
