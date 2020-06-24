//
//  ClimbStairsSolution.swift
//  Algorithm
//
//  Created by Yi on 2020/6/24.
//  Copyright © 2020 Yi. All rights reserved.
//

import Foundation

class ClimbStairsSolution {
    func climbStairs(_ n: Int) -> Int {
        if n <= 2 {
            return n;
        }
        return climbStairs(n - 1) + climbStairs(n - 2)
    }
    
    func climbStairs01(_ n: Int) -> Int {
        var result = 0
        var preOne = 0, preTwo = 0
        for i in 1...n {
            if i == 1 {
                preOne = 1
                preTwo = 0
            } else if i == 2 {
                preOne = 1
                preTwo = 1
            } else {
                preTwo = result - preTwo
                preOne = result
            }
            result = preOne + preTwo
        }
        return result
    }
}
