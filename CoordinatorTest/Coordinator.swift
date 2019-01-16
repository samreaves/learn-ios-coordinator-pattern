//
//  Coordinator.swift
//  CoordinatorTest
//
//  Created by Sam Reaves on 1/15/19.
//  Copyright © 2019 Sam Reaves Digital. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
