//
//  ViewController.swift
//  Singleton
//
//  Created by GKC on 2017/1/4.
//  Copyright © 2017年 GKC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let ocCopy = SingletonOC.sharedInstance(with: .GCD)
        print(ocCopy)
        
        let copyer = SingletonSwift.sharedInstance.copy()
        print(copyer)
        
        print(SingletonOC.sharedInstance(with: .GCD).copy())
        print(SingletonSwift.sharedInstance)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

