
//
//  HelpViewController.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/18/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit

class HelpViewController: UIViewController {

    
    @IBOutlet weak var helpBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        if revealViewController() != nil
        {
            
            let tapButtonBack = UITapGestureRecognizer(target: self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)))
            helpBtn.addGestureRecognizer(tapButtonBack)
            self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
            
        }
    }

}
