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
    
    init(a: Int!, b: Int!, c: Int!) {
        
        if let a = a, a > 0,
           let b = b, b > 0,
           let c = c, c > 0 {
            self.a = a
            self.b = b
            self.c = c
            
            sides = [a,b,c]
            if let sides = sides {
                evaluate(sides: sides)
            }
            
        } else {
            //TODO: Exception Handling
            
        }
    }
    
    private func evaluate(sides: NSSet) {
        switch (sides.count) {
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


var equilateral = Triangle(a: 1, b: 1, c: 1).type
var isosceles = Triangle(a: 2, b: 1, c: 1).type
var scalene = Triangle(a: 1, b: 2, c: 3).type

var none = Triangle(a: 0, b: 0, c: 0).type

