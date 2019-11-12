//
//  ContactsTableViewController.swift
//  iOS9-Contacts-Hybrid
//
//  Created by Paul Solt on 11/11/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {

	var contactController = LSIContactController()
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return contactController.contacts.count
	}

	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)

//		guard let contact = contactController.contacts[indexPath.row] as? Contact else { return cell }
		let contact = contactController.contacts[indexPath.row]

		cell.textLabel?.text = contact.name
		cell.detailTextLabel?.text = contact.relationship

		return cell
	}
}
