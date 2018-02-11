//
//  AnimationManager.swift
//  Circle
//
//  Created by Igor Matyushkin on 11.02.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import UIKit

public class AnimationManager {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public init(imageView: UIImageView) {
        // Initialize data
        
        self.bundle = nil
        self.imageNamePrefix = ""
        self.imageNameSuffix = ""
        self.firstFrameIndex = 0
        self.lastFrameIndex = 0
        self.duration = 0
        self.repeatCount = 0
        
        // Save reference to image view
        
        self.imageView = imageView
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    fileprivate var imageView: UIImageView!
    
    fileprivate var bundle: Bundle?
    
    fileprivate var imageNamePrefix: String!
    
    fileprivate var imageNameSuffix: String!
    
    fileprivate var firstFrameIndex: Int!
    
    fileprivate var lastFrameIndex: Int!
    
    fileprivate var duration: TimeInterval!
    
    fileprivate var repeatCount: Int!
    
    // MARK: Public object methods
    
    @discardableResult
    public func bundle(_ value: Bundle?) -> Self {
        self.bundle = value
        return self
    }
    
    @discardableResult
    public func prefix(_ value: String) -> Self {
        self.imageNamePrefix = value
        return self
    }
    
    @discardableResult
    public func suffix(_ value: String) -> Self {
        self.imageNameSuffix = value
        return self
    }
    
    @discardableResult
    public func from(_ value: Int) -> Self {
        self.firstFrameIndex = value
        return self
    }
    
    @discardableResult
    public func to(_ value: Int) -> Self {
        self.lastFrameIndex = value
        return self
    }
    
    @discardableResult
    public func duration(_ value: TimeInterval) -> Self {
        self.duration = value
        return self
    }
    
    @discardableResult
    public func repeatCount(_ value: Int) -> Self {
        self.repeatCount = value
        return self
    }
    
    @discardableResult
    public func start() -> Self {
        self.imageView.animationImages = self.images(fromBundle: self.bundle, withPrefix: self.imageNamePrefix, suffix: self.imageNameSuffix, firstIndex: self.firstFrameIndex, lastIndex: self.lastFrameIndex)
        self.imageView.animationDuration = self.duration
        self.imageView.animationRepeatCount = self.repeatCount
        self.imageView.startAnimating()
        return self
    }
    
    @discardableResult
    public func stop() -> Self {
        self.imageView.stopAnimating()
        return self
    }
    
    // MARK: Private object methods
    
    fileprivate func images(fromBundle bundle: Bundle?, withPrefix prefix: String, suffix: String, firstIndex: Int, lastIndex: Int) -> [UIImage] {
        var resultImages = [UIImage]()
        
        for i in firstIndex...lastIndex {
            let imageName = String(format: "%@%d%@", prefix, i, suffix)
            let image = UIImage(named: imageName, in: bundle, compatibleWith: nil)
            
            if image != nil {
                resultImages.append(image!)
            }
        }
        
        return resultImages
    }
    
    // MARK: Protocol implementation
    
}
