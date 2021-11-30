//
//  ListPlayListViewController.swift
//  
//
//  Created by Ivan Dasigan on 3/6/20.
//

import UIKit
import RealmSwift

class ListPlayListViewController: UIViewController {

    let realm = try! Realm()
    
    var myPlaylist: Results<Playlist>?
    
    @IBOutlet weak var playlistBarbtn: UIBarButtonItem!
    @IBOutlet weak var listplaylistTableView: UITableView!
    
    var selPlIndex = 0
    var isEmptyPl = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        listplaylistTableView.delegate = self
        listplaylistTableView.dataSource = self
        listplaylistTableView.register(UINib(nibName: "PlaylistTableViewCell", bundle: nil), forCellReuseIdentifier: "playlistCell")
        
        self.navigationController?.navigationBar.tintColor = UIColor.myBlue()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        if revealViewController() != nil
        {
            playlistBarbtn.target = self.revealViewController()
            playlistBarbtn.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
            
        }
        
        loadPlaylist()
        print("back to u")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        listplaylistTableView.reloadData()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if isEmptyPl == true{
            if let segEmptyPl = segue.destination as? PlaylistmusicsViewController{
                segEmptyPl.addNotEmptPl = myPlaylist![selPlIndex]
            }
            
        }else{
            if let segEmptyPl = segue.destination as? AddMusicEmptyViewController{
                segEmptyPl.addEmptPl = myPlaylist![selPlIndex]
            }
            
        }
       
    }
    
    func loadPlaylist(){
        myPlaylist = realm.objects(Playlist.self)
        listplaylistTableView.reloadData()
    }
    
}

extension ListPlayListViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPlaylist?.count ?? 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let playlistCell = tableView.dequeueReusableCell(withIdentifier: "playlistCell", for: indexPath) as? PlaylistTableViewCell{
            
            playlistCell.listplaylistImage.image = UIImage(data: myPlaylist?[indexPath.row].addPlaylistImage ?? UIImage(named: "addImg")!.jpegData(compressionQuality: 1.0)!)
            playlistCell.listplaylistLbl.text = myPlaylist?[indexPath.row].addPlaylistName ?? "No Added Playlist"
            
            return playlistCell
            
        }
        
        return UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 94
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selPlIndex = indexPath.row
        
 
        tableView.deselectRow(at: indexPath, animated: true)
        if (myPlaylist?[indexPath.row].songItems.isEmpty)!{
            
            isEmptyPl = false
            
            self.performSegue(withIdentifier: "segNotExistPl", sender: self)
            
        }else{
            isEmptyPl = true
            self.performSegue(withIdentifier: "segExistPl", sender: self)
            
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete{
            
            if let playlistItem = myPlaylist?[indexPath.row]{
                do{
                    try realm.write {
                        realm.delete(playlistItem)
                    }
                }catch{
                    print("Error Deleting playlist\(error)")
                }
            }
            
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
            
        }
        
        listplaylistTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
//    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
//        
//        let editCellAction = UITableViewRowAction(style: .normal, title: "Edit") { (rowAction, indexPath) in
//            var editTextField = UITextField()
//            let editMsgBox = UIAlertController(title: "Playlist", message: "New Playlist Name", preferredStyle: .alert)
//            let editAction = UIAlertAction(title: "Ok", style: .default, handler: { (_) in
//                
//                if let editPlName = editTextField.text{
//                    if let playlistItem = self.myPlaylist?[indexPath.row]{
//                        do{
//                            try self.realm.write {
//                                playlistItem.addPlaylistName = editPlName
//                            }
//                        }catch{
//                            print("Error editing playlist name\(error)")
//                        }
//                    }
//                }
//                self.loadPlaylist()
//                
//            })
//            
//            let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
//            editMsgBox.addTextField(configurationHandler: { (textfield) in
//                
//                textfield.placeholder = "Enter New Playlist Name"
//                editTextField = textfield
//                
//            })
//            editMsgBox.addAction(editAction)
//            editMsgBox.addAction(cancelAction)
//            self.present(editMsgBox, animated: true, completion: nil)
//            
//            tableView.beginUpdates()
//            tableView.reloadRows(at: [indexPath], with: .automatic)
//            tableView.endUpdates()
//            print("Edit")
//        }
//        editCellAction.backgroundColor = .green
//        let deleteCellAction = UITableViewRowAction(style: .normal, title: "Delete") { (rowAction, indexPath) in
//            if let playlistItem = self.myPlaylist?[indexPath.row]{
//                do{
//                    try self.realm.write {
//                        self.realm.delete(playlistItem)
//                    }
//                }catch{
//                    print("Error Deleting playlist\(error)")
//                }
//            }
//            tableView.beginUpdates()
//            tableView.deleteRows(at: [indexPath], with: .automatic)
//            tableView.endUpdates()
//            print("Delete")
//        }
//        
//        deleteCellAction.backgroundColor = .red
//        return [editCellAction, deleteCellAction]
//    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = delete(indexPath, tableView)
        let editAction = edit(indexPath, tableView)
        return UISwipeActionsConfiguration(actions: [deleteAction, editAction])
    }
    
    func delete(_ indexPath: IndexPath, _ tableView: UITableView) -> UIContextualAction{
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, view,completion) in
            if let playlistItem = self.myPlaylist?[indexPath.row]{
                do{
                    try self.realm.write {
                        self.realm.delete(playlistItem)
                    }
                }catch{
                    print("Error Deleting playlist\(error)")
                }
            }
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
            print("Delete")
            completion(true)
            
        }
        deleteAction.image = UIImage(named: "trash")
        deleteAction.backgroundColor = .red
        return deleteAction
    }
    func edit(_ indexPath: IndexPath, _ tableView: UITableView) -> UIContextualAction{
        
        let editAction = UIContextualAction(style: .normal, title: "Edit") { (action, view, completion) in
        self.MessageBoxEdit(indexPath, tableView)
        completion(true)
        }
        editAction.image = UIImage(named: "edit")
        editAction.backgroundColor = .green
        return editAction
    }
    func MessageBoxEdit(_ indexPath: IndexPath, _ tableView: UITableView){
                    var editTextField = UITextField()
                    let editMsgBox = UIAlertController(title: "Playlist", message: "New Playlist Name", preferredStyle: .alert)
                    let editAction = UIAlertAction(title: "Ok", style: .default, handler: { (_) in
        
                        if let editPlName = editTextField.text{
                            if let playlistItem = self.myPlaylist?[indexPath.row]{
                                do{
                                    try self.realm.write {
                                        playlistItem.addPlaylistName = editPlName
                                    }
                                }catch{
                                    print("Error editing playlist name\(error)")
                                }
                            }
                        }
                        self.loadPlaylist()
        
                    })
        
                    let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
                    editMsgBox.addTextField(configurationHandler: { (textfield) in
        
                        textfield.placeholder = "Enter New Playlist Name"
                        editTextField = textfield
        
                    })
                    editMsgBox.addAction(editAction)
                    editMsgBox.addAction(cancelAction)
                    self.present(editMsgBox, animated: true, completion: nil)
        
                    tableView.beginUpdates()
                    tableView.reloadRows(at: [indexPath], with: .automatic)
                    tableView.endUpdates()
    }
}
