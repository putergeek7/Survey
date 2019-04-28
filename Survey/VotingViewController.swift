//
//  VotingViewController.swift
//  Survey
//
//  Created by Pat on 4/27/19.
//  Copyright © 2019 putergeek. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {
    
    
    var voteController: VoteController?

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var responseTextField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func submitVote(_ sender: Any) {
        
        //unwrap all the stuff that the user does
        guard let name = nameTextField.text,
            let response = responseTextField.text else { return }
        
        //now going to pass the variables into the VoteController, and the VoteController has something called createVote so going to pass the name and response and that is going to create the vote and append the votes array
        
        voteController?.createVote(name: name, response: response)
        
        nameTextField.text = ""
        responseTextField.text = ""
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
