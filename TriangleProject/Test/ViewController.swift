//
//  ViewController.swift
//  Test
//
//  Created by Mohammed Joseph Petrelli Salameh on 14/02/2017.
//  Copyright © 2017 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let Triangle1 = Triangle(sideA: 1, sideB: 1, sideC: 1)
        let Triangle2 = Triangle(sideA: 2, sideB: 1, sideC: 1)
        let Triangle3 = Triangle(sideA: 1, sideB: 2, sideC: 3)
        
        let Triangle4 = Triangle(sideA: 0, sideB: 0, sideC: 0)
        
        print(Triangle1.type, Triangle2.type,
              Triangle3.type, Triangle4.type, separator: "\n", terminator: "")
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
