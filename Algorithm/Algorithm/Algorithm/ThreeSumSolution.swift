//
//  ThreeSumSolution.swift
//  Algorithm
//
//  Created by Yi on 2020/6/28.
//  Copyright © 2020 Yi. All rights reserved.
//

import Foundation

class ThreeSumSolution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        if nums.count < 3 {
            return result
        }
        let sortedNums = nums.sorted()
        for i in 0...(sortedNums.count - 1) {
            if i > 0 && sortedNums[i] == sortedNums[i - 1] {
                continue
            }
            var right = sortedNums.count - 1
            let target = -sortedNums[i]
            for y in (i + 1)..<sortedNums.count {
                if y > i + 1 && sortedNums[y] == sortedNums[y - 1] {
                    continue
                }
                while y < right && sortedNums[y] + sortedNums[right] > target {
                    right -= 1
                }
                if y == right {
                    break
                }
                if sortedNums[y] + sortedNums[right] == target {
                    result.append([sortedNums[i], sortedNums[y], sortedNums[right]])
                }
            }
        }
        return result
    }
}
