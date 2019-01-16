//
//  Storyboarded.swift
//  CoordinatorTest
//
//  Created by Sam Reaves on 1/15/19.
//  Copyright © 2019 Sam Reaves Digital. All rights reserved.
//

import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        
        /* Pulls fullname from main.storyboard of view controller (MyApp.MyViewController) */
        let fullName = NSStringFromClass(self)
        
        /* Splits on the dot to find just view controller name */
        let className = fullName.components(separatedBy: ".")[1]
        
        /* Load the storyboard */
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        /* Instantiate a view controller with that identifier, and force cast as the type that was requested */
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
