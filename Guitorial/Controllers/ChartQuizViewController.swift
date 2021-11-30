//
//  ChartQuizViewController.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/7/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit

class ChartQuizViewController: UIViewController {

    @IBOutlet weak var quizBarBtn: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.tintColor = UIColor.myBlue()
        
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        if revealViewController() != nil
        {
            quizBarBtn.target = self.revealViewController()
            quizBarBtn.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
            
      
        }
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("View will appear")
    }
    
    @IBAction func quizBarbtnAction(_ sender: UIBarButtonItem) {
        
 
        
        print("quiz tap")
    }
    
}
