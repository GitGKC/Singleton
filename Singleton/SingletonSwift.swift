//
//  SingletonSwift.swift
//  Singleton
//
//  Created by GKC on 2017/1/4.
//  Copyright © 2017年 GKC. All rights reserved.
//

import UIKit

class SingletonSwift: NSObject, NSCopying {
    static let sharedInstance = SingletonSwift()
    
    private override init() { }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return SingletonSwift.sharedInstance
    }
    
}
