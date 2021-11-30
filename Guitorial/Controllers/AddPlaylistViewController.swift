//
//  AddPlaylistViewController.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/6/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit
import RealmSwift

class AddPlaylistViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let realm = try! Realm()
    var playlistItems: Results<Playlist>?
    
    let addPlaylistImageController = UIImagePickerController()
    var playlistImage : UIImage?
    
    @IBOutlet weak var addedPlImageView: UIImageView!
    @IBOutlet weak var addmusicDisplay: UILabel!
    @IBOutlet weak var savePLaylitsDisplay: UILabel!
    @IBOutlet weak var playlistnameTextview: UITextView!
    @IBOutlet weak var addPlaylistImage: UIImageView!
    @IBOutlet weak var savePlaylistView: UIView!
    @IBOutlet weak var addMusicView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        playlistnameTextview.delegate = self
        addPlaylistImageController.delegate = self
  
     
        let tapImageGesture = UITapGestureRecognizer(target: self, action: #selector(self.tapplaylistImage))
        
        addPlaylistImage.addGestureRecognizer(tapImageGesture)
        
        let tapViewGesture = UITapGestureRecognizer(target: self, action: #selector(self.tapAddMusicView))
        addMusicView.addGestureRecognizer(tapViewGesture)
        
        let tapView1Gesture = UITapGestureRecognizer(target: self, action: #selector(self.tapSavePlaylist))
        
        savePlaylistView.addGestureRecognizer(tapView1Gesture)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        loadPlaylistItems()
        addMusicView.isUserInteractionEnabled = false
        addmusicDisplay.textColor = .lightGray
        addPlaylistImage.isUserInteractionEnabled = true
    }
    func loadPlaylistItems(){
        
        playlistItems = realm.objects(Playlist.self)
        
    }
    
    @objc func tapSavePlaylist(){
                let name = playlistnameTextview.text ?? "Untitled"
                let imagePL = playlistImage ?? UIImage(named: "addImg")!
                savePlaylist(playlistName: name, playlistImage: imagePL)
        
        addMusicView.isUserInteractionEnabled = true
        addmusicDisplay.textColor = .darkText

        print("Save playlist")
    }
    
    @objc func tapplaylistImage(){
        addPlaylistImageController.allowsEditing = true
        
        let chooseImageSheet = UIAlertController(title: "", message: "Choose a Source", preferredStyle: UIAlertController.Style.actionSheet)
        
        let cameraAction = UIAlertAction(title: "Camera", style: .default) { (action:UIAlertAction) in
            
            self.addPlaylistImageController.sourceType = .camera
            self.present(self.addPlaylistImageController, animated: true, completion: nil)
            
        }
        let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default) { (action:UIAlertAction) in
            self.addPlaylistImageController.sourceType = .photoLibrary
            self.present(self.addPlaylistImageController, animated: true, completion: nil)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        chooseImageSheet.addAction(cameraAction)
        chooseImageSheet.addAction(photoLibraryAction)
        chooseImageSheet.addAction(cancelAction)
        present(chooseImageSheet, animated: true, completion: nil)
        
    }
    @objc func tapAddMusicView(){
        
        
        
        performSegue(withIdentifier: "segueAddSongs", sender: self)
        print("add music")
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let segToAddMusicinPl = segue.destination as? AddSongsViewController{
            
            segToAddMusicinPl.selectedPl = playlistItems?.last
            
        }
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let playlistImg = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            
            addedPlImageView.image = playlistImg
            playlistImage = playlistImg
        }
        self.dismiss(animated: true, completion: nil)
        
    }
    
    


    
    
    func savePlaylist(playlistName: String, playlistImage: UIImage){
        
        let myPlaylist = Playlist()
        
        if let playlistImageData =  playlistImage.jpegData(compressionQuality: 1.0){
            myPlaylist.addPlaylistImage = playlistImageData
            myPlaylist.addPlaylistName = playlistName
            
            do{
                try realm.write {
                    realm.add(myPlaylist)
                }
            }catch{
                print("Error saving playlist \(error)")
            }
            
        }else{
            print("Error saving playlist")
        }
        
    }
    
}
extension AddPlaylistViewController: UITextViewDelegate{
    
    
    func textViewDidChange(_ textView: UITextView) {
        
        guard !textView.text.isEmpty else{
            
            savePLaylitsDisplay.textColor = UIColor.lightGray
            savePlaylistView.isUserInteractionEnabled = false
            return
        }
        savePLaylitsDisplay.textColor = UIColor.darkText
        savePlaylistView.isUserInteractionEnabled = true
        
    }
    
}
