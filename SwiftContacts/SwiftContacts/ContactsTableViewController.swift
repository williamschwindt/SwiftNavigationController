//
//  ContactsTableViewController.swift
//  SwiftContacts
//
//  Created by William Schwindt on 3/4/20.
//  Copyright © 2020 William Schwindt. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    var contacts: [String] = ["Will", "James", "Matt"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactsCell", for: indexPath)

        let contact = contacts[indexPath.row]
        
        cell.textLabel?.text = contact

        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowContact" {
            guard let contactDetailVC = segue.identifier as? ContactDetailsViewController else {
                return
            }
            
            guard let indexPath = tableView.indexPathForSelectedRow else {
                return
            }
            
            let contact = contacts[indexPath.row]
            
            contactDetailVC.contact = contact
        }
    }

}
