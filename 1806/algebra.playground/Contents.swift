    //: Playground - noun: a place where people can play

import UIKit

let a = sqrt(2.0)  // 1.414213562373095
a * a == 2.0

(a * a) - 2.0

    struct f : TPPolynominal {  // f(x) = x^2 - 2 in Q[x]
        static let value = Polynominal<Q>(-2, 0, 1)
    }
    
    typealias K = FieldExtension<f> // K = Q[x]/(x^2 - 2)
    
    let a = K(0, 1)    // x mod (x^2 - 2)
    a * a              // 2 mod (x^2 - 2)
    a * a == 2         // true!
    
    
