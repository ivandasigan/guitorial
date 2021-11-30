//
//  ScoreBoardViewController.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/7/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit

class ScoreBoardViewController: UIViewController {

    
    var passTotal = 0
    var passCorrectAns = 0
    var passIncorrectAns = 0
    var delay = 2.5
    

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var incorrectLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        totalLabel.text = String(passTotal + 10)
        correctLabel.text = String(passCorrectAns)
        incorrectLabel.text = String(passIncorrectAns)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.setHidesBackButton(true, animated: animated)
    }
 
    @IBAction func tryAgainBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        self.navigationController?.popToRootViewController(animated: true)
    }
    

}
