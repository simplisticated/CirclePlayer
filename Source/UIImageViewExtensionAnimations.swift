//
//  UIImageViewExtensionAnimations.swift
//  Circle
//
//  Created by Igor Matyushkin on 11.02.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public extension UIImageView {
    
    public var crl: AnimationManager {
        get {
            return AnimationManager(imageView: self)
        }
    }
    
}
