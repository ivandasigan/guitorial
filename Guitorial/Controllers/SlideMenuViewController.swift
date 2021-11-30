//
//  SlideMenuViewController.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/1/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit

class SlideMenuViewController: UIViewController {
    
    let navBarMenuList:[String] = ["Songlist","Favorites","Playlist","Guitar Chords","Quiz", "Help","About Us"]
    
    @IBOutlet weak var navBarTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navBarTableView.delegate = self
        navBarTableView.dataSource = self
        navBarTableView.backgroundColor = UIColor.clear; navBarTableView.register(UINib(nibName: "SlideMenuTableViewCell", bundle: nil), forCellReuseIdentifier: "menuCell")
    }
    

}

extension SlideMenuViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return navBarMenuList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let navBarMenuCell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as? SlideMenuTableViewCell{
            navBarMenuCell.backgroundColor = UIColor.clear
            navBarMenuCell.imgNavMenu.image = UIImage(named: navBarMenuList[indexPath.row])
            navBarMenuCell.titleNavMenu.text = navBarMenuList[indexPath.row]
            return navBarMenuCell
            
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0{
            performSegue(withIdentifier: "seg_songs", sender: self)
        }else if indexPath.row == 1{
            performSegue(withIdentifier: "seg_fav", sender: self)
        }else if indexPath.row == 2{
            performSegue(withIdentifier: "seg_playlist", sender: self)
        }else if indexPath.row == 3{
             performSegue(withIdentifier: "seg_chart", sender: self)
        }else if indexPath.row == 4{
            performSegue(withIdentifier: "seg_quiz", sender: self)
        }else if indexPath.row == 5{
            performSegue(withIdentifier: "seg_help", sender: self)
        }else if indexPath.row == 6{
            performSegue(withIdentifier: "seg_aboutus", sender: self)
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 63
    }
    
    
    
}
