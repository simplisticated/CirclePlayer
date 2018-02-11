//
//  MainViewController.swift
//  Circle
//
//  Created by Igor Matyushkin on 11.02.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import UIKit
import Circle

class MainViewController: UIViewController {

    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Outlets
    
    @IBOutlet fileprivate weak var animatedImageView: UIImageView!
    
    // MARK: Object variables & properties
    
    // MARK: Public object methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize navigation bar
        
        self.navigationItem.title = "Circle Demo"
        
        // Start animation
        
        self.animatedImageView.crl
            .prefix("progress_bar_")
            .from(1)
            .to(5)
            .duration(1)
            .repeatCount(1000)
            .start()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Private object methods
    
    // MARK: Actions
    
    // MARK: Protocol implementation
    
}
