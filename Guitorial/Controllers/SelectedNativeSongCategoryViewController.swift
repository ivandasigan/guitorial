//
//  SelectedNativeSongCategoryViewController.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/5/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit
import RealmSwift
import AVFoundation

class SelectedNativeSongCategoryViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: - Variables Declaration
    let songs = AllSongsBank()
    
    let realm = try! Realm()
    var favoriteList : Results<FavoriteNativeSong>?
    
    var audioPlayer : AVAudioPlayer!
    
    var passNativeSongCat = String()
    var passNativeAlbums = UIImage()
    let nativeSongCatLabel = UILabel()
    var selectedIndex = Int()
    let searchTextfield = UITextField()
    var cancelBtn : UIBarButtonItem?
    var searchBtn : UIBarButtonItem?
    
    var nativeSongBankList = [NativeSongs]()
    var searchSongs = [NativeSongs]()
  
    var isSearch = false
    var searchPlay = 0
    
    //MARK: - Outlets
    @IBOutlet weak var selectedNativeSongsTableView: UITableView!
    @IBOutlet weak var nativeAlbumsImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        selectedNativeSongsTableView.delegate = self
        selectedNativeSongsTableView.dataSource = self
        selectedNativeSongsTableView.register(UINib(nibName: "SelectedNativeSongCategoryTableViewCell", bundle: nil), forCellReuseIdentifier: "selectedNativeSongsCell")
        
        nativeSongCatLabel.text = passNativeSongCat
        nativeSongCatLabel.textColor = UIColor.myBlue()
        nativeSongCatLabel.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 20)!
        self.navigationItem.titleView = nativeSongCatLabel
        
        nativeAlbumsImage.image = passNativeAlbums
        
        searchTextfield.frame = CGRect(x: 0, y: 0, width: 240, height: 30)
        searchTextfield.autocapitalizationType = .none
        searchTextfield.smartQuotesType = .no
        searchTextfield.autocorrectionType = .no
        searchTextfield.textColor = UIColor.myBlue()
        searchTextfield.placeholder = "Search here"
        searchTextfield.borderStyle = UITextField.BorderStyle.none
        searchTextfield.clearButtonMode = UITextField.ViewMode.whileEditing
        searchTextfield.delegate = self
        
        let searchButton = UIButton(type: .system)
        searchButton.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        searchButton.setImage(UIImage(named: "sear"), for: .normal)
        searchButton.tintColor = .white
        searchBtn = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(tapSearch))
        self.navigationItem.rightBarButtonItem = searchBtn
        
        cancelBtn = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(tapCancel))
        
        if passNativeSongCat == "Ilokano"{
                    ilokano()
        }else if passNativeSongCat == "Tagalog"{
                    tagalog()
        }else if passNativeSongCat == "Pangasinan"{
                    pangasinan()
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadFavorites()
        arr()
        for x in favoriteList!{
            for y in 0...searchSongs.count - 1{
                let fav = x.title
                let song = searchSongs[y].nativeSongTitle
                if fav == song{
                    searchSongs[y].isFavorite = true
                    
                }
            }
        }
        
        playSong(0)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        isSearch = false
        searchSongs.removeAll()
        arr()
        
        UIView.animate(withDuration: 0.9) {
            self.nativeSongCatLabel.alpha = 1.0
            self.navigationItem.rightBarButtonItem = self.searchBtn
            self.navigationItem.titleView = self.nativeSongCatLabel
            self.searchTextfield.alpha = 0.0
        }
        for a in searchSongs{
            a.isPlay = false
        }
        audioPlayer.stop()
        selectedNativeSongsTableView.reloadData()
    }
    
    //MARK: - Methods
    func loadFavorites(){
        favoriteList = realm.objects(FavoriteNativeSong.self)
    }
    @objc func tapSearch(){
        print("Tap search")
        isSearch = true
        UIView.animate(withDuration: 0.9) {
                        self.nativeSongCatLabel.alpha = 0.0
                        self.navigationItem.rightBarButtonItem = self.cancelBtn
                        self.navigationItem.titleView = self.searchTextfield
                        self.searchTextfield.alpha = 1.0
        }
    }
    @objc func tapCancel(){
        isSearch = false
        searchSongs.removeAll()
        arr()
        selectedNativeSongsTableView.reloadData()
        UIView.animate(withDuration: 0.9) {
          self.nativeSongCatLabel.alpha = 1.0
            self.navigationItem.rightBarButtonItem = self.searchBtn
            self.navigationItem.titleView = self.nativeSongCatLabel
            self.searchTextfield.alpha = 0.0
        }
        for a in searchSongs{
            
            a.isPlay = false
            
        }
        searchSongs[searchPlay].isPlay = true
        selectedNativeSongsTableView.reloadData()
 
    }
    func playSong(_ indexSong : Int){
        
        let songUrl = Bundle.main.url(forResource: nativeSongBankList[indexSong].nativeSongTitle, withExtension: ".mp3")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: songUrl!)
            audioPlayer.prepareToPlay()
        }catch{
            print("Error Playing music\(error)")
        }
    }
    func arr(){
        
        nativeSongBankList.sort(by: { $0.nativeSongTitle < $1.nativeSongTitle } )
        for str in nativeSongBankList{
            searchSongs.append(str)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let segueToLyricsnChords = segue.destination as? LyricsnChordsViewController{
            segueToLyricsnChords.passTitle = nativeSongBankList[selectedIndex].nativeSongTitle 
            segueToLyricsnChords.passArtist = nativeSongBankList[selectedIndex].nativeSongArtist ?? String()
            segueToLyricsnChords.passLyricsnChords = nativeSongBankList[selectedIndex].lyricsnChords ?? String()
        }
    }
    
    //MARK:- UITEXTFIELD DELEGATE
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        
        searchTextfield.resignFirstResponder()
        searchSongs.removeAll()
        arr()
        selectedNativeSongsTableView.reloadData()
        return true
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if (searchTextfield.text?.count)! != 0{
            self.searchSongs.removeAll()
            for str1 in nativeSongBankList{
                let range = str1.nativeSongTitle.lowercased().range(of: textField.text!, options: .caseInsensitive, range: nil, locale: nil)
                if range != nil{
                    self.searchSongs.append(str1)
                }
            }
        }
        selectedNativeSongsTableView.reloadData()
        return true
        
    }
}
//MARK: - Extension UITableView
extension SelectedNativeSongCategoryViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchSongs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if var selNativeSongCell = tableView.dequeueReusableCell(withIdentifier: "selectedNativeSongsCell", for: indexPath) as? SelectedNativeSongCategoryTableViewCell{
            if selNativeSongCell == nil{
                selNativeSongCell = UITableViewCell(style: .default, reuseIdentifier: "selectedNativeSongsCell") as! SelectedNativeSongCategoryTableViewCell
            }
            selNativeSongCell.selectedNativeSongCatImageView.image = searchSongs[indexPath.row].nativeSongImg
            selNativeSongCell.selectedNativeSongTitleLabel.text = searchSongs[indexPath.row].nativeSongTitle
            selNativeSongCell.selectedNativeSongArtistLabel.text = searchSongs[indexPath.row].nativeSongArtist
            selNativeSongCell.selectedNativeSongInitLyricsLabel.text = searchSongs[indexPath.row].nativeSongPartialLyrics
            selNativeSongCell.isFavBtnOutlet.isSelected = searchSongs[indexPath.row].isFavorite
            selNativeSongCell.isPlayBtnOutlet.isSelected = searchSongs[indexPath.row].isPlay
            selNativeSongCell.favCellDelegate = self
            selNativeSongCell.index = indexPath
            return selNativeSongCell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        selectedIndex = indexPath.row
        for x in 0...nativeSongBankList.count{
            
            if nativeSongBankList[x].nativeSongTitle == searchSongs[selectedIndex].nativeSongTitle{

                selectedIndex = x
                break
            }
        }
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "segueLyricsnChordsVC", sender: self)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 112
    }
    
  //addImg
    
    func tagalog(){
        for x in 0...9 {
            nativeSongBankList.append(NativeSongs(songImg: UIImage(named: "addImg")!, songTitle: songs.titleSongsTagalog[x], songArtist: songs.artistSongsTagalog[x], songLyrics: songs.partialLyricsTagalog[x], lyricsnchords: songs.lyricsnchordsTagalog[x], isFav: songs.isFavoriteTagalog[x], isPlay: songs.isPlayTagalog[x]))
        }

    }
    func ilokano(){
        for y in 0...9{
            nativeSongBankList.append(NativeSongs(songImg: UIImage(named: "addImg")!, songTitle: songs.titleSongsIlokano[y], songArtist: songs.artistSongsIlokano[y], songLyrics: songs.partialLyricsIlokano[y], lyricsnchords: songs.lyricsnchordsIlokano[y], isFav: songs.isFavoriteIlokano[y], isPlay: songs.isPlayIlokano[y]))
        }
    }

    func pangasinan(){
        for z in 0...9{
            nativeSongBankList.append(NativeSongs(songImg: UIImage(named: "addImg")!, songTitle: songs.titleSongsPangasinan[z], songArtist: songs.artistSongsPangasinan[z], songLyrics: songs.partialLyricsPangasinan[z], lyricsnchords: songs.lyricsnchordsPangasinan[z], isFav: songs.isFavoritePangasinan[z], isPlay: songs.isPlayPangasinan[z]))
        }
    }
    
    func deleteSong(_ fav_native_song: FavoriteNativeSong){
        do{
            try realm.write{
                realm.delete(fav_native_song)
                print("Successfully delete")
            }
        }catch{
            print("Error deleteing favorite\(error)")
        }
    }
    func saveSongs(_ native_song: FavoriteNativeSong){
        
        do{
            try realm.write {
                realm.add(native_song)
            }
        }catch{
            print("Error saving Song \(error)" )
        }
    }
}
//MARK: - 
extension SelectedNativeSongCategoryViewController: SelectedNativeSongsFavDelegate{

    func playOnClickCell(_ index: Int) {
        if isSearch{

                for x in 0...nativeSongBankList.count{
                    
                    if nativeSongBankList[x].nativeSongTitle == searchSongs[index].nativeSongTitle{
                        
                        searchPlay = x
                        break
                    }
                }
                playSong(searchPlay)
                if searchSongs[index].isPlay == true{
                    audioPlayer.stop()
                    searchSongs[index].isPlay = !searchSongs[index].isPlay
                }else{
                    audioPlayer.play()
//                    for a in searchSongs{
//                        a.isPlay = false
//                    }
                    searchSongs[index].isPlay = !searchSongs[index].isPlay
                    selectedNativeSongsTableView.reloadData()
                    
                }
            
        }else{
            playSong(index)
            if searchSongs[index].isPlay == true{
                audioPlayer.stop()
                searchSongs[index].isPlay = !searchSongs[index].isPlay
            }else{
                
                audioPlayer.play()
                
                for a in searchSongs{
                    
                    a.isPlay = false
                    
                }
                searchSongs[index].isPlay = !searchSongs[index].isPlay
                selectedNativeSongsTableView.reloadData()
            }
        }
     
    }

    func favOnClickCell(_ index: Int) {
        
        if searchSongs[index].isFavorite == true{
            print("Not favorite at index\(index)")
            for favItem in favoriteList!{
                
                if favItem.title == searchSongs[index].nativeSongTitle{
                    deleteSong(favItem)
                }
                
            }
            searchSongs[index].isFavorite = !searchSongs[index].isFavorite
        }else{
            print("Save to realm, Is favorite at index\(searchSongs[index].nativeSongTitle)")
            let favoriteNativeSong = FavoriteNativeSong()
    
            let titlex = searchSongs[index].nativeSongTitle
            let indexR = index
            favoriteNativeSong.title = titlex 
            favoriteNativeSong.isFavIndex = indexR
            saveSongs(favoriteNativeSong)
            searchSongs[index].isFavorite = !searchSongs[index].isFavorite
           }
        
        }
    }

