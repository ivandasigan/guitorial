//
//  AddMusicEmptyViewController.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/16/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit
import RealmSwift

class AddMusicEmptyViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let realm = try! Realm()
    
    @IBOutlet weak var existPlaylistImage: UIImageView!
    @IBOutlet weak var existPlaylistLbl: UITextView!
    @IBOutlet weak var addMusicBtnOutlet: UIButton!
    @IBOutlet weak var editBarBtnOutlet: UIBarButtonItem!
    @IBOutlet weak var editPlImage: UIImageView!
    
    var addEmptPl: Playlist?
    var imagePickerController = UIImagePickerController()
    var isEdit = false
    var myEditPlImage = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        existPlaylistLbl.autocorrectionType = .no
        existPlaylistLbl.autocapitalizationType = .none
        existPlaylistLbl.isEditable = false
        imagePickerController.delegate = self
        imagePickerController.allowsEditing = true
        
        existPlaylistLbl.text = addEmptPl?.addPlaylistName
        existPlaylistImage.image = UIImage(data: addEmptPl?.addPlaylistImage ?? UIImage(named: "addImg")!.jpegData(compressionQuality: 1.0)!)
        
        let plImageTapGesture = UITapGestureRecognizer(target: self, action: #selector(self.editPlImageAction))
        
        editPlImage.addGestureRecognizer(plImageTapGesture)
        editPlImage.isUserInteractionEnabled = true
        editPlImage.alpha = 0.0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        
        borderAddmusicBtn()
        print("haha")
        
    }
    @IBAction func editPlAction(_ sender: UIBarButtonItem) {
        if isEdit == true{
            isEdit = false
            editBarBtnOutlet.title = "Edit"
            existPlaylistLbl.isEditable = false
            addMusicBtnOutlet.isEnabled = true
           
           editPlImage.alpha = 0.0
            addMusicBtnOutlet.setTitleColor(.white, for: .normal)
        
            if let plNameTextview = existPlaylistLbl.text{
                do{
                    try realm.write {
                        addEmptPl?.addPlaylistName = plNameTextview
                 
                    }
                }catch{
                    print("Error updating playlist name\(error)")
                }
            }
            if let editPlImageData = myEditPlImage.jpegData(compressionQuality: 1.0){
                do{
                    try realm.write{
                          addEmptPl?.addPlaylistImage = editPlImageData
                    }
                }catch{
                    print("Error updating playlist image")
                }
            }
            
        }else{
            isEdit = true
            editBarBtnOutlet.title = "Done"
            existPlaylistLbl.isEditable = true
            addMusicBtnOutlet.isEnabled = false
            addMusicBtnOutlet.setTitleColor(.gray, for: .normal)
            editPlImage.alpha = 1.0
        }
        
        
    }
    @IBAction func emptyMusicAction(_ sender: UIButton) {

            performSegue(withIdentifier: "segAddEmp", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let segEmptyPltoAddMusic = segue.destination as? AddSongsViewController{
            
            segEmptyPltoAddMusic.selectedPl = addEmptPl
            
        }
        
    }
    
    @objc func editPlImageAction(){
        let chooseImageSheet = UIAlertController(title: "", message: "Choose a Source", preferredStyle: UIAlertController.Style.actionSheet)
        
        let cameraAction = UIAlertAction(title: "Camera", style: .default) { (action:UIAlertAction) in
            
            self.imagePickerController.sourceType = .camera
            self.present(self.imagePickerController, animated: true, completion: nil)
            
        }
        let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default) { (action:UIAlertAction) in
            self.imagePickerController.sourceType = .photoLibrary
            self.present(self.imagePickerController, animated: true, completion: nil)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        chooseImageSheet.addAction(cameraAction)
        chooseImageSheet.addAction(photoLibraryAction)
        chooseImageSheet.addAction(cancelAction)
        present(chooseImageSheet, animated: true, completion: nil)
        
    }
    
    func borderAddmusicBtn(){
        
        addMusicBtnOutlet.layer.cornerRadius = 8
        
        addMusicBtnOutlet.clipsToBounds = true
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let myPlImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            
            existPlaylistImage.image = myPlImage
            myEditPlImage = myPlImage
            
        }
        dismiss(animated: true, completion: nil)
    }
}
