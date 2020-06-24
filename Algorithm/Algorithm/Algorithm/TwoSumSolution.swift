//
//  TwoSumSolution.swift
//  Algorithm
//
//  Created by Yi on 2020/6/24.
//  Copyright © 2020 Yi. All rights reserved.
//

import Foundation

class TwoSumSolution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0...(nums.count - 1) {
            for j in (i + 1)...(nums.count - 1) {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }
        return []
    }
    
    // 空间换时间
    func twoSum01(_ nums: [Int], _ target: Int) -> [Int] {
        var map: [Int: Int] = [:]
        for i in 0...(nums.count - 1) {
            map[nums[i]] = i
        }
        for i in 0...(nums.count - 1) {
            let another = target - nums[i]
            if let aIndex = map[another] {
                if aIndex != i {
                    return [i, aIndex]
                }
            }
        }
        return []
    }
    
    func twoSum02(_ nums: [Int], _ target: Int) -> [Int] {
        var map: [Int: Int] = [:]
        for i in 0...(nums.count - 1) {
            let another = target - nums[i]
            if let aIndex = map[another] {
                return [aIndex, i]
            }
            map[nums[i]] = i
        }
        return []
    }
}
