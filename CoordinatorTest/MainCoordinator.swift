//
//  MainCoordinator.swift
//  CoordinatorTest
//
//  Created by Sam Reaves on 1/15/19.
//  Copyright © 2019 Sam Reaves Digital. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        navigationController.pushViewController(vc, animated: false)
    }
}
