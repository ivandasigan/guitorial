//
//  ChordsChartViewController.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/10/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit

class ChordsChartViewController: UIViewController {
    
    let majorchordsList : [String] = ["A Major","B Major","C Major","D Major","E Major","F Major","G Major"]
    
    
    let chords : [[String]] = [
        ["A Minor","A#", "A#m"],
        ["B Minor"],
        ["C Minor", "C#m"],
        ["D Minor", "D#", "D#m"],
        ["E Minor"],
        ["F Minor", "F#", "F#m"],
        ["G Minor", "G#", "G#m"]
    ]
    
    var selIndexCol = 0
    
    @IBOutlet weak var chartBarbtn: UIBarButtonItem!
    @IBOutlet weak var chordsCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        chordsCollectionView.delegate = self
        chordsCollectionView.dataSource = self
        
        chordsCollectionView.register(UINib(nibName: "ChordschartCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "chordsCell")
        
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.tintColor = UIColor.myBlue()
        
        if revealViewController() != nil
        {
            chartBarbtn.target = self.revealViewController()
            chartBarbtn.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
            
            
        }
        
        let collectionFlowlayout = chordsCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        collectionFlowlayout.sectionInset = UIEdgeInsets(top: 5, left: 15, bottom: 5, right: 15)
        collectionFlowlayout.minimumInteritemSpacing = 10
        collectionFlowlayout.itemSize = CGSize(width: (self.chordsCollectionView.frame.size.width - 45)/2, height: (self.chordsCollectionView.frame.size.height - 140)/2)
        
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let segToChordsByMajor = segue.destination as? ChordsViewController{
            
            segToChordsByMajor.chordsMajor = chords[selIndexCol]
            
        }
        
    }
  
}
extension ChordsChartViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return majorchordsList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let collectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "chordsCell", for: indexPath) as? ChordschartCollectionViewCell{
            
            collectionCell.chordChartImage.image = UIImage(named: majorchordsList[indexPath.row])
            collectionCell.chordChartLabel.text = majorchordsList[indexPath.row]
            return collectionCell
        }
        return UICollectionViewCell()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        selIndexCol = indexPath.row
        performSegue(withIdentifier: "segChords", sender: self)
    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 2.0
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        
//        return CGSize(width: (collectionView.layer.bounds.width/2) - 2, height: (collectionView.layer.bounds.height/2) - 2)
//    }
//    
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 2.0
//    }
    
    
}
