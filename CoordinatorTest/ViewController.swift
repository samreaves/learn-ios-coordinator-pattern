//
//  ViewController.swift
//  CoordinatorTest
//
//  Created by Sam Reaves on 1/15/19.
//  Copyright © 2019 Sam Reaves Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?

    @IBAction func buyTapped(_ sender: UIButton) {
        coordinator?.buySubscription()
    }
    
    @IBAction func CreateAccountTapped(_ sender: UIButton) {
        coordinator?.createAccount()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

