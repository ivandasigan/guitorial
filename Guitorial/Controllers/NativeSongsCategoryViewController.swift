//
//  NativeSongsCategoryViewController.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/5/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit

class NativeSongsCategoryViewController: UIViewController {

    @IBOutlet weak var navBarBtn: UIBarButtonItem!
    var category = String()
    var albumImageCat = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if revealViewController() != nil
        {
            navBarBtn.target = self.revealViewController()
            navBarBtn.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
            
        }
     
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let categoryLabel = UILabel()
        categoryLabel.text = "Native Songs Category"
        categoryLabel.textColor = UIColor.myBlue()
        categoryLabel.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 20)!
        
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.tintColor = UIColor.myBlue()
        
        self.navigationItem.titleView = categoryLabel
    }
    @IBAction func nativeSongsCategoryBtn(_ sender: UIButton){
        
        let mySender = sender.tag
        if mySender == 1{
            albumImageCat = UIImage(named: "ilokanogrid")!
            category = "Ilokano"
            performSegue(withIdentifier: "segueSelectedNativeSongs", sender: self)
        }else if mySender == 2{
            albumImageCat = UIImage(named: "pangasinangrid")!
            category = "Pangasinan"
            performSegue(withIdentifier: "segueSelectedNativeSongs", sender: self)
        }else if mySender == 3{
            albumImageCat = UIImage(named: "tagaloggrid")!
            category = "Tagalog"
            performSegue(withIdentifier: "segueSelectedNativeSongs", sender: self)
        }
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let segueToSelectedNativeSongCat = segue.destination as? SelectedNativeSongCategoryViewController{
            
            segueToSelectedNativeSongCat.passNativeSongCat = category
                segueToSelectedNativeSongCat.passNativeAlbums = albumImageCat
            
        }
    }
}
