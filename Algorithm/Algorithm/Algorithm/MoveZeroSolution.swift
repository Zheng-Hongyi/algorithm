//
//  MoveZeroSolution.swift
//  Algorithm
//
//  Created by Yi on 2020/6/28.
//  Copyright © 2020 Yi. All rights reserved.
//

import Foundation

class MoveZeroSolution {
    func moveZeroes(_ nums: inout [Int]) {
        var j = 0
        for (index, value) in nums.enumerated() {
            if value != 0 {
                nums[j] = nums[index]
                if index != j {
                    nums[index] = 0
                }
                j += 1
            }
        }
    }
}
