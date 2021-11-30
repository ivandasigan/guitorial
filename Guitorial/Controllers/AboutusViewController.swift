//
//  AboutusViewController.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/8/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit

class AboutusViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        if revealViewController() != nil
                {
                    
                    let tapButtonBack = UITapGestureRecognizer(target: self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)))
                    backButton.addGestureRecognizer(tapButtonBack)
                    self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
        
    }

}
}
