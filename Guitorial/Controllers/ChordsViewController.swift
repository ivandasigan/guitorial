//
//  ChordsViewController.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/16/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit

class ChordsViewController: UIViewController {
    
    var chordsMajor : [String] = []
    
    @IBOutlet weak var chordsCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        chordsCollectionView.delegate = self
        chordsCollectionView.dataSource = self
        
        chordsCollectionView.register(UINib(nibName: "ChordsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "chordsCell")
        
        
        let collectionFlowlayout = chordsCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        collectionFlowlayout.sectionInset = UIEdgeInsets(top: 5, left: 15, bottom: 5, right: 15)
        collectionFlowlayout.minimumInteritemSpacing = 10
        collectionFlowlayout.itemSize = CGSize(width: (self.chordsCollectionView.frame.size.width - 45)/2, height: (self.chordsCollectionView.frame.size.height - 140)/2)
    
}
}
extension ChordsViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return chordsMajor.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let chordsCell = collectionView.dequeueReusableCell(withReuseIdentifier: "chordsCell", for: indexPath) as? ChordsCollectionViewCell{
            
            chordsCell.chordsByMajor.image = UIImage(named: chordsMajor[indexPath.row])
            chordsCell.chordsByMajorLbl.text = chordsMajor[indexPath.row]
            return chordsCell
            
        }
        
        return UICollectionViewCell()
        
    }

    
    
}
