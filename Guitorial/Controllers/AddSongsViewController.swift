//
//  AddSongsViewController.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/6/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit
import RealmSwift

class AddSongsViewController: UIViewController, CheckPlMusicDelegate {

    
    let realm = try! Realm()
    var allNativeSongs = [AddPlSong]()
    
    let songs = AllSongsBank()
    
    var selectedPl: Playlist?
    
    @IBOutlet weak var addSongsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        addSongsTableView.delegate = self
        addSongsTableView.dataSource = self
        addSongsTableView.register(UINib(nibName: "AddSongsTableViewCell", bundle: nil), forCellReuseIdentifier: "addSongsCell")
        
        tagalog()
        ilokano()
        pangasinan()
//        allNativeSongs = allNativeSongs.sorted(by: { (val1: AddPlSong, val2: AddPlSong) -> Bool in
//            return UIContentSizeCategory(rawValue: val1.addSong!) < UIContentSizeCategory(rawValue: val2.addSong!)
//        })
       
    }
    
    func before(val1: String, val2: String) -> Bool {
        return val1 < val2
    }
    
    func tagalog(){
        for x in 0...9 {
            allNativeSongs.append(AddPlSong(addSong: songs.titleSongsTagalog[x], isAdded: false))
        }
        
    }
    func ilokano(){
        for y in 0...9{
            allNativeSongs.append(AddPlSong(addSong: songs.titleSongsIlokano[y], isAdded: false))
        }
    }
    
    
    
    func pangasinan(){
        for z in 0...9{
            allNativeSongs.append(AddPlSong(addSong: songs.titleSongsPangasinan[z], isAdded: false))
            }

    }
    
    func deletePlSong(_ plSongIndex: PlaylistSongs){
        if let _ = self.selectedPl{
            do{
                try realm.write {
                    realm.delete(plSongIndex)
                }
            }catch{
                
            }
        }
    }
    @IBAction func doneAddsongACtion(_ sender: Any) {
             self.navigationController?.popToRootViewController(animated: true)
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let segToSongs = segue.destination as? PlaylistmusicsViewController{
            
            segToSongs.addNotEmptPl = selectedPl
            
        }
        
    }
    
}
extension AddSongsViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allNativeSongs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let addSongsCell = tableView.dequeueReusableCell(withIdentifier: "addSongsCell", for: indexPath) as? AddSongsTableViewCell{
            
            addSongsCell.songsAddPlaylistLabel.text = allNativeSongs[indexPath.row].addSong
            addSongsCell.checkSongBtnOutlet.isSelected = allNativeSongs[indexPath.row].isAdded
            addSongsCell.checkPlMusicDelegate = self
            addSongsCell.index = indexPath
            return addSongsCell
            
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func addPlMusicOnClickCell(_ index: Int) {
        
        if allNativeSongs[index].isAdded == true{
            for x in 0...selectedPl!.songItems.count - 1{
                if selectedPl?.songItems[x].songs == allNativeSongs[index].addSong{
                    deletePlSong((selectedPl?.songItems[x])!)
                    break
                }
            }
            allNativeSongs[index].isAdded = !allNativeSongs[index].isAdded
        }else{
            if let myplaylist = self.selectedPl{
                do{
                    try realm.write {
                        let musicItem = PlaylistSongs()
                        musicItem.songs = allNativeSongs[index].addSong!
                        myplaylist.songItems.append(musicItem)
                    }
                }catch{
                    print("Error saving playlist song\(error)")
                }
            }
            allNativeSongs[index].isAdded = !allNativeSongs[index].isAdded
        }
        print(index)
    }
}
//if nativeSongBankList[index].isFavorite == true{
//
//    for favItem in favoriteList!{
//
//        if favItem.title == nativeSongBankList[index].nativeSongTitle{
//            deleteSong(favItem)
//        }
//
//    }
//    nativeSongBankList[index].isFavorite = !nativeSongBankList[index].isFavorite
//}else{
//
//    let favoriteNativeSong = FavoriteNativeSong()
//
//    let titlex = nativeSongBankList[index].nativeSongTitle
//    let indexR = index
//    favoriteNativeSong.title = titlex ?? String()
//    favoriteNativeSong.isFavIndex = indexR
//    saveSongs(favoriteNativeSong)
//    nativeSongBankList[index].isFavorite = !nativeSongBankList[index].isFavorite
//}
//
//}
