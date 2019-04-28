//
//  ResultsTableViewController.swift
//  Survey
//
//  Created by Pat on 4/27/19.
//  Copyright © 2019 putergeek. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController, VoteControllerProtocol {
    
    
    var voteController: VoteController?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        //line 24, everytime view appears want to reload the data
        
        tableView.reloadData()
    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        //line 28 have to unwrap this with "?? and 0" it means that if this "voteController?.votes.count" is nil just do 0. Safer than force unwrapping. This is called "Nil Coalescing"
        return voteController?.votes.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VoteCell", for: indexPath)
        
        //for each row trying to target each vote. inside of the votes array there are different votes so we're,
        // trying to the vote into the votes array. inside the votes array there are different votes and we're trying to put that in the row why we have "indesPath.row". Need to understand that this takes the votes and puts them into each row.
        
        
        guard let vote = voteController?.votes[indexPath.row] else { return UITableViewCell() }
        
        cell.textLabel?.text = vote.name
        cell.detailTextLabel?.text = vote.response
        
        return cell
    }
    

  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
