//
//  VoteControllerProtocol.swift
//  Survey
//
//  Created by Pat on 4/27/19.
//  Copyright © 2019 putergeek. All rights reserved.
//

import Foundation

protocol VoteControllerProtocol {
    
    //this means that any class that has this protocol attached to it needs to have a Vote Controller; it has to conform to it. So if I take this protocol and i go to ResultsTableViewController and I enter ", VoteControllerProtocol (for now click Fix". Attach to controllers

    var voteController: VoteController? {get set}
}


// The reason why we need the Vote Controller Protocol because anything that has that Vote Controller Protocol is getting that vote controller
