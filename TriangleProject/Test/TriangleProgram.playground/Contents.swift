//: Playground - noun: a place where people can play

import UIKit

enum TriangleType {
    case scalene,   // 0/3 sides Equal
    isosceles,      // 2/3 sides Equal
    equilateral,    // 3/3 sides Equal
    none            // Invalid Inputs
}

public class Triangle {
    
    var a: Int?
    var b: Int?
    var c: Int?
    
    var type: TriangleType = .none
    
    var sides: NSSet?
    
    init(sideA a: Int!, sideB b: Int!, sideC c: Int!) {
        
        guard let a = a, a>0,
              let b = b, b>0,
              let c = c, c>0 else {
                
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

var equilateral = Triangle(sideA: 1, sideB: 1, sideC: 1).type
var isosceles = Triangle(sideA: 2, sideB: 1, sideC: 1).type
var scalene = Triangle(sideA: 1, sideB: 2, sideC: 3).type

var none = Triangle(sideA: 0, sideB: 0, sideC: 0).type
