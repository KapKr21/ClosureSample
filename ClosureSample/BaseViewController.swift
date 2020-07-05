//
//  BaseViewController.swift
//  ClosureSample
//
//  Created by Kap's on 17/06/20.
//  Copyright © 2020 Kapil. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var infoImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUPUserInterface()
    }
    
    func setUPUserInterface() {
        self.infoLabel.isHidden = true
        self.infoImage.isHidden = true
    }
    
    func showInfo (info : String, image : UIImage) {
        
        self.infoLabel.text = info
        self.infoImage.image = image
        
        self.infoLabel.isHidden = false
        self.infoImage.isHidden = false
        
    }
    @IBAction func tapButtonTapped(_ sender: Any) {
        
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondVC.didTapButton = showInfo
        
        present(secondVC, animated: true, completion: nil)
    }
}
