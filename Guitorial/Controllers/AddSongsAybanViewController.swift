//
//  AddSongsAybanViewController.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/18/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit
import RealmSwift

class AddSongsAybanViewController: UIViewController, AddSongDelegate {

    
    let realm = try! Realm()
    var addSongPl: Playlist?
    var allNativeSongs = [AddPlSong]()
    let songs = AllSongsBank()
    
    @IBOutlet weak var addSongAybanTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        addSongAybanTableView.delegate = self
        addSongAybanTableView.dataSource = self
        addSongAybanTableView.register(UINib(nibName: "AddSongsAybanTableViewCell", bundle: nil), forCellReuseIdentifier: "addSongsAybanCell")
  
        
        tagalog()
        ilokano()
        pangasinan()
        //allNativeSongs = allNativeSongs.sorted()
    }

    @IBAction func doneAddPlSongBtn(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
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
        if let _ = self.addSongPl{
            do{
                try realm.write {
                    realm.delete(plSongIndex)
                }
            }catch{
                
            }
        }
    }
}

extension AddSongsAybanViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allNativeSongs.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let addSongAybanCell = tableView.dequeueReusableCell(withIdentifier: "addSongsAybanCell", for: indexPath) as? AddSongsAybanTableViewCell{
            
            addSongAybanCell.addSongAybanLabel.text = allNativeSongs[indexPath.row].addSong
            addSongAybanCell.checkAybanBtnOutlet.isSelected = allNativeSongs[indexPath.row].isAdded
            
            addSongAybanCell.addSongDelegate = self
            addSongAybanCell.indexAyban = indexPath
            return addSongAybanCell
        }
        return UITableViewCell()
    }
    
    func checkSongOnClick(index: Int) {
        if allNativeSongs[index].isAdded == true{
            for x in 0...addSongPl!.songItems.count - 1{
                if addSongPl?.songItems[x].songs == allNativeSongs[index].addSong{
                    deletePlSong((addSongPl?.songItems[x])!)
                    break
                }
            }
           allNativeSongs[index].isAdded = !allNativeSongs[index].isAdded
        }else{
            if let myPlaylistAyban = self.addSongPl{
                do{
                    try realm.write {
                        let musicItemAyban = PlaylistSongs()
                        musicItemAyban.songs = allNativeSongs[index].addSong ?? ""
                        myPlaylistAyban.songItems.append(musicItemAyban)
                    }
                }catch{
                    print("Error saving music ayban in realm\(error)")
                }
            }
            allNativeSongs[index].isAdded = !allNativeSongs[index].isAdded
        }
        
       
     
      
    }
    
}
