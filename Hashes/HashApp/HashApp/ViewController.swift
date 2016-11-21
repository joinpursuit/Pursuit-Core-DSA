//
//  ViewController.swift
//  HashApp
//
//  Created by Jason Gresh on 10/28/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var stringHash: Hash<String>!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        stringHash = Hash<String>()
        stringHash.insert("foobar")
        stringHash.insert("hello")
        stringHash.insert("my")
        let keys = stringHash.keys()
        print(keys)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

