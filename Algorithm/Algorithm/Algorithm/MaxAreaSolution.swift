//
//  MaxAreaSolution.swift
//  Algorithm
//
//  Created by Yi on 2020/6/24.
//  Copyright © 2020 Yi. All rights reserved.
//

import Foundation

class MaxAreaSolution {
    func maxArea(_ height: [Int]) -> Int {
        var result = 0
        for i in 0...(height.count - 2) {
            for j in (i + 1)...(height.count - 1) {
                let min = height[i] > height[j] ? height[j] : height[i]
                let aArea = (j - i) * min
                if result < aArea {
                    result = aArea
                }
            }
        }
        return result
    }
}
