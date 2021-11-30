//
//  PlaylistmusicsViewController.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/16/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit
import RealmSwift
import AVFoundation

class PlaylistmusicsViewController: UIViewController {
    
    let realm = try! Realm()
    var musicPlayer: AVAudioPlayer!
    
    var musicItems: Results<PlaylistSongs>?
    var addNotEmptPl: Playlist?
    var selMusic = String()
    var indexPlaySong = 0
    
    @IBOutlet weak var nextSongOutlet: UIButton!
    @IBOutlet weak var prevSongOutlet: UIButton!
    @IBOutlet weak var currentPlayingLabel: UILabel!
    @IBOutlet weak var currentPlayingImage: UIImageView!
    @IBOutlet weak var playViewConstraints: NSLayoutConstraint!
    @IBOutlet weak var playlistmusicsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        playViewConstraints.constant = 0
        playlistmusicsTableView.delegate = self
        playlistmusicsTableView.dataSource = self
        playlistmusicsTableView.register(UINib(nibName: "PlaylistmusicsTableViewCell", bundle: nil), forCellReuseIdentifier: "playlistmusicCell")
        loadPlaylistMusics()
        musicPlay(music: selMusic)
        currentPlayingImage.image = UIImage(data: addNotEmptPl?.addPlaylistImage ?? (UIImage(named: "addImg")?.jpegData(compressionQuality: 1.0)!)!)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        playlistmusicsTableView.reloadData()
        print("View will appear")
    }
    
    @IBAction func playpauseSong(_ sender: UIButton) {
        if sender.isSelected{
            sender.isSelected = false
           musicPlayer.play()
        }else{
            sender.isSelected = true
             musicPlayer.stop()
        }
    }
    
    @IBAction func prevSong(_ sender: UIButton) {
        
        indexPlaySong-=1

        if indexPlaySong >= 0{
            
            let prevPlaysong = musicItems![indexPlaySong].songs
            nextSongOutlet.isEnabled = true
            nextSongOutlet.isSelected = false
            musicPlay(music: prevPlaysong)
            musicPlayer.play()
                    currentPlayingLabel.text = musicItems?[indexPlaySong].songs
        }else{
            sender.isEnabled = false
            sender.isSelected = true
        }
        
    }
    @IBAction func nextSong(_ sender: UIButton) {
        indexPlaySong+=1
        let countMusic = musicItems!.count

        if indexPlaySong <= countMusic - 1{
            let nextPlaysong = musicItems![indexPlaySong].songs
            prevSongOutlet.isEnabled = true
            prevSongOutlet.isSelected = false
            musicPlay(music: nextPlaysong)
            musicPlayer.play()
            currentPlayingLabel.text = musicItems?[indexPlaySong].songs
            
        }else{
            sender.isEnabled = false
            sender.isSelected = true
        }
    }
    
    func loadPlaylistMusics(){
        
        musicItems = addNotEmptPl?.songItems.sorted(byKeyPath: "songs", ascending: true)
        playlistmusicsTableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let segAddSongAyban = segue.destination as? AddSongsAybanViewController{
            segAddSongAyban.addSongPl = addNotEmptPl
        }
    }
    
    func musicPlay(music: String){
        print(music)
        let musicUrl = Bundle.main.url(forResource: music, withExtension: ".mp3")
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: musicUrl!)
            musicPlayer.prepareToPlay()
        }catch{
            print("Erro playing music\(error)")
        }
        
    }

}

extension PlaylistmusicsViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicItems?.count ?? 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UIView.animate(withDuration: 0.3) {
            self.playViewConstraints.constant = 50
            self.view.layoutIfNeeded()
        }
        indexPlaySong = indexPath.row
        selMusic = musicItems?[indexPath.row].songs ?? ""
        musicPlay(music: selMusic)
        if musicPlayer.isPlaying{
            musicPlayer.stop()
        }else{
            musicPlayer.play()
        }
        if indexPlaySong == 0{
            prevSongOutlet.isSelected = true
            nextSongOutlet.isSelected = false
        }else if indexPlaySong == musicItems!.count - 1{
            prevSongOutlet.isSelected = false
            nextSongOutlet.isSelected = true
        }else{
            prevSongOutlet.isSelected = false
            nextSongOutlet.isSelected = false
        }
        currentPlayingLabel.text = musicItems?[indexPath.row].songs ?? ""
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let musicCell = tableView.dequeueReusableCell(withIdentifier: "playlistmusicCell", for: indexPath) as? PlaylistmusicsTableViewCell{
            
            musicCell.playlistImage.image = UIImage(data: addNotEmptPl?.addPlaylistImage ?? (UIImage(named: "addImg")?.jpegData(compressionQuality: 1.0)!)!)
            musicCell.playlistBelongLabel.text = addNotEmptPl?.addPlaylistName
            musicCell.playlistMusicLabel.text = musicItems?[indexPath.row].songs
            
            return musicCell
        }
        
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete{
            
            if let musicItem = musicItems?[indexPath.row]{
                do{
                    try realm.write {
                        realm.delete(musicItem)
                    }
                }catch{
                    print("Error deleting Playlust music\(error)")
                }
            }
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
        playlistmusicsTableView.reloadData()
    }
}
