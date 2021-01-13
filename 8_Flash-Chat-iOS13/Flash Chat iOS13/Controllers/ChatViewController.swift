//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class ChatViewController: UIViewController {

    //MARK:- IBOutlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    var messages: [Message] = [
        Message(sender: "A", body: "Hi"),
        Message(sender: "B", body: "Hello"),
        Message(sender: "A", body: "How r u")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Navigation bar
        title = ID.appName
        navigationItem.hidesBackButton = true
        
        // tableview
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: ID.cellNibName, bundle: nil), forCellReuseIdentifier: ID.cellIdentifier)
        
    }
    
    @IBAction func logoutPressed(_ sender: UIBarButtonItem) {
        let firebaseAuth = Auth.auth()
        do {
          try firebaseAuth.signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print ("Error signing out: %@", signOutError)
        }
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    

}

//MARK:- UITableView
extension ChatViewController: UITableViewDataSource {
    // numberOfRowsInSection
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ID.cellIdentifier, for: indexPath) as! MessageCell
        cell.messageLabel?.text = "\(messages[indexPath.row].sender): \(messages[indexPath.row].body)"
        return cell
    }
}

extension ChatViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
