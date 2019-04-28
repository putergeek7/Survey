//
//  PollingTabBarViewController.swift
//  Survey
//
//  Created by Pat on 4/27/19.
//  Copyright © 2019 putergeek. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for childVC in children {
            
            if var childVC = childVC as? VoteControllerProtocol {
                
                childVC.voteController = voteController
            }
        }
    }
    
    //created an instance inside this class (VoteController) and passing it to every childVC (view controller...look above on line 16) that has this protocol "VoteControllerProtocol". So if go back to main storyboard all the child are inside the references. So have to pass that VC to every single one of them. 
    let voteController = VoteController()
}
