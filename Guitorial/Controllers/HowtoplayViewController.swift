//
//  HowtoplayViewController.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/7/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit

class HowtoplayViewController: UIViewController {

    @IBOutlet weak var howtoplayquizLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    @IBAction func cancelBtn(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
}
