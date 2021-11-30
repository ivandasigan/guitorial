//
//  FavoritesViewController.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/6/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit
import RealmSwift

class FavoritesViewController: UIViewController {
    
    let realm = try! Realm()
    var favoritesList : Results<FavoriteNativeSong>?
    
    var songs = AllSongsBank()
    var nativeSongBankList = [NativeSongs]()
    var lyricsIndex = Int()
    @IBOutlet weak var navBarBtn1: UIBarButtonItem!
    @IBOutlet weak var favoritesTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        favoritesTableView.delegate = self
        favoritesTableView.dataSource = self
        favoritesTableView.register(UINib(nibName: "FavoritesTableViewCell", bundle: nil), forCellReuseIdentifier: "favCell")
        
        let favNavTitle = UILabel()
        favNavTitle.text = "Favorites"
        favNavTitle.textColor = UIColor.myBlue()
        favNavTitle.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 20)!
        self.navigationItem.titleView = favNavTitle
       self.navigationController?.navigationBar.tintColor =  UIColor.myBlue()
        
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        if revealViewController() != nil
        {
            navBarBtn1.target = self.revealViewController()
            navBarBtn1.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
            
            
        }
        
        loadFavoriteItems()
        tagalog()
        ilokano()
        pangasinan()
    }
    
    func loadFavoriteItems(){
        favoritesList = realm.objects(FavoriteNativeSong.self).sorted(byKeyPath: "title", ascending: true)
        favoritesTableView.reloadData()
    }
    func tagalog(){
        for x in 0...9 {
            nativeSongBankList.append(NativeSongs(songImg: UIImage(named: "tagaloggrid")!, songTitle: songs.titleSongsTagalog[x], songArtist: songs.artistSongsTagalog[x], songLyrics: songs.partialLyricsTagalog[x], lyricsnchords: songs.lyricsnchordsTagalog[x], isFav: songs.isFavoriteTagalog[x], isPlay: songs.isPlayTagalog[x]))
        }
        
    }
    func ilokano(){
        for y in 0...9{
            nativeSongBankList.append(NativeSongs(songImg: UIImage(named: "ilokanogrid")!, songTitle: songs.titleSongsIlokano[y], songArtist: songs.artistSongsIlokano[y], songLyrics: songs.partialLyricsIlokano[y], lyricsnchords: songs.lyricsnchordsIlokano[y], isFav: songs.isFavoriteIlokano[y], isPlay: songs.isPlayIlokano[y]))
        }
    }
    
    
    
    func pangasinan(){
        for z in 0...9{
            nativeSongBankList.append(NativeSongs(songImg: UIImage(named: "pangasinangrid")!, songTitle: songs.titleSongsPangasinan[z], songArtist: songs.artistSongsPangasinan[z], songLyrics: songs.partialLyricsPangasinan[z], lyricsnchords: songs.lyricsnchordsPangasinan[z], isFav: songs.isFavoritePangasinan[z], isPlay: songs.isPlayPangasinan[z]))
        }
        
    }
    
    func GetLyrics(_ index: Int) -> Int{
        
        let lyricsIndex = nativeSongBankList.firstIndex(where: {
            $0.nativeSongTitle == favoritesList?[index].title ?? ""
            
        })
        
        return lyricsIndex!
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let segFavtoLyrics = segue.destination as? LyricsnChordsViewController{
            
            segFavtoLyrics.passTitle = nativeSongBankList[lyricsIndex].nativeSongTitle 
            segFavtoLyrics.passArtist = nativeSongBankList[lyricsIndex].nativeSongArtist ?? ""
            segFavtoLyrics.passLyricsnChords = nativeSongBankList[lyricsIndex].lyricsnChords ?? ""
        }
        
    }
}



extension FavoritesViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoritesList?.count ?? 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let favCell = tableView.dequeueReusableCell(withIdentifier: "favCell", for: indexPath) as? FavoritesTableViewCell{
            
            guard let favItem = favoritesList?[indexPath.row].title else {
                favCell.favLavel.text = "No Favorites"
                return favCell
            }
            favCell.favLavel.text = favItem
            
            return favCell
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {

        if editingStyle == .delete{
            if let favItem = favoritesList?[indexPath.row]{
            do{
                try realm.write {
                    realm.delete(favItem)

                }
            }catch{
                print("Error Deleting data\(error)")
            }

                tableView.beginUpdates()
                tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
                tableView.endUpdates()
            }
        }


    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        lyricsIndex = GetLyrics(indexPath.row)
        performSegue(withIdentifier: "favLyricsnChords", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
//    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//
//        let deleteAction = delete(indexPath, tableView)
//        return UISwipeActionsConfiguration(actions: [deleteAction])
//
//    }
    
//    func delete(_ indexPath: IndexPath, _ tableView: UITableView) -> UIContextualAction{
//        let deleteAction = UIContextualAction(style: .destructive, title: "") { (action, view, completion) in
//            if let favItem = self.favoritesList?[indexPath.row]{
//                do{
//                    try self.realm.write {
//                        self.realm.delete(favItem)
//                    }
//                }catch{
//                    print("Error Deleting data\(error)")
//                }
//            }
//            tableView.beginUpdates()
//            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
//            tableView.endUpdates()
//            completion(true)
//        }
//        deleteAction.image = UIImage(named: "trash")
//        deleteAction.backgroundColor = .red
//        return deleteAction
//    }
    
    
}
