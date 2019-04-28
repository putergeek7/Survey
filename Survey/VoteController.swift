//
//  VoteController.swift
//  Survey
//
//  Created by Pat on 4/27/19.
//  Copyright © 2019 putergeek. All rights reserved.
//

import Foundation

class VoteController {
    
    //needs a variable votes which is an array Vote that is initialized to be empty
    var votes: [Vote] = []
    
    // a method createVote which has attributes need for vote
    func createVote(name: String, response: String) {
        
        //create instance
        let vote = Vote(name: name, response: response)
        votes.append(vote)
    }
}
