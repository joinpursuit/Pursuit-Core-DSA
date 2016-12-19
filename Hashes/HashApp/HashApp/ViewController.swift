//
//  ViewController.swift
//  HashApp
//
//  Created by Jason Gresh on 10/28/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var stringHash: Hash<String, Int>!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        stringHash = Hash<String, Int>()
        stringHash.insert("one", 1)
        stringHash.insert("two", 2)
        stringHash.insert("five", 5)
        let keys = stringHash.keys()
        print(keys)
        
        print(stringHash.get(key:"five")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

