//
//  Triangle.swift
//  Test
//
//  Created by Mohammed Joseph Petrelli Salameh on 14/02/2017.
//  Copyright © 2017 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import Foundation

enum TriangleType {
    case scalene,   // 0/3 sides Equal
    isosceles,      // 2/3 sides Equal
    equilateral,    // 3/3 sides Equal
    none            // Invalid Inputs
}

public class Triangle {
    
    var a: Int? = 0
    var b: Int? = 0
    var c: Int? = 0
    
    var type: TriangleType = .none
    
    var sides: NSSet?
    
    init(sideA a: Int!, sideB b: Int!, sideC c: Int!) {
        guard let a = a, a>0, let b = b, b>0, let c = c, c>0 else {
                //TODO: Exception Handling
                return //exit method
        }
        self.a = a
        self.b = b
        self.c = c
        sides = [a, b, c]
        if let sides = sides {
            evaluate(sides: sides)
        }
    }
    private func evaluate(sides: NSSet) {
        switch sides.count {
        case 1:
            type = .equilateral
        case 2:
            type = .isosceles
        case 3:
            type = .scalene
        default:
            type = .none
        }
    }
}
