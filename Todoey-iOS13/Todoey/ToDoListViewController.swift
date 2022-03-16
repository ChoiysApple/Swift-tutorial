//
//  ViewController.swift
//  Todoey
//
//  Created by Philipp Muellauer on 02/12/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {
    
    var itemArray = ["Find Mike", "Buy eggs", "Destroy Ganon", "Get Master Sword", "Visit Impa", "Reach peak", "Shoot baloons", "Race with people", "Find Koroks", "Slay Hynox", "Save zelda", "Buy Hyruilan Shield", "Visit Temple", "Burn the Forest", "a", "b", "c", "d", "e", "f", "Nell Dragon", "Bokoblin", "Rynel", "Lizalforce", "Octor", "Moriblin", "Deck Tree", "Flower Curse Ganon"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func AddButtonClicked(_ sender: UIBarButtonItem) {
        
        let alert = UIAlertController(title: "Add new", message: "Adding new Item", preferredStyle: .alert)
        alert.addTextField { alertTextField in
            alertTextField.placeholder = "Title for New Item"
        }
        
        let action = UIAlertAction(title: "ok", style: .default) { action in
            guard let newTitle = alert.textFields?[0].text else {
                return
            }
            self.itemArray.append(newTitle)
            self.tableView.reloadData()
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
}

//MARK: - TableView DataSource
extension ToDoListViewController {
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell")!
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
}


//MARK: - TableView Delegate
extension ToDoListViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        
        if cell?.accessoryType == .checkmark {
            cell?.accessoryType = .none
        } else {
            cell?.accessoryType = .checkmark
            print(cell?.textLabel?.text)
        }
        
        
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
                
    }
}
