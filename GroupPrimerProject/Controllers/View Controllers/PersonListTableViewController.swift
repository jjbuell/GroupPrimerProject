//
//  PersonListTableViewController.swift
//  GroupPrimerProject
//
//  Created by Bryson Jones on 6/14/21.
//

import UIKit

class PersonListTableViewController: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PersonController.shared.people.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath) as? PersonTableViewCell
        
        let personCell = PersonController.shared.people[indexPath.row]
        cell?.textLabel?.text = personCell.name
        cell?.imageView?.image = personCell.image

        return cell ?? UITableViewCell()
    }

   
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
//            guard let indexPath = tableView.indexPathForSelectedRow,
//                  let destinationVC = segue.destination as? else {return}
//            let personToSend = PersonController.shared.people[indexPath.row]
//            destinationVC.
            
        }
    }
}
