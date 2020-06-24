//
//  ViewController.swift
//  Algorithm
//
//  Created by Yi on 2020/6/24.
//  Copyright © 2020 Yi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        testTwoSumSolution()
//        testMaxArea()
        testClimbStairs()
    }
    
    func testTwoSumSolution() {
        let nums = [2, 7, 11, 15], taget = 9
//        debugPrint(TwoSumSolution().twoSum(nums, taget))
//        debugPrint(TwoSumSolution().twoSum01(nums, taget))
        debugPrint(TwoSumSolution().twoSum02(nums, taget))
    }
    
    func testMaxArea() {
        let nums = [1,8,6,2,5,4,8,3,7];
        debugPrint(MaxAreaSolution().maxArea(nums))
    }
    
    func testClimbStairs() {
//        debugPrint(ClimbStairsSolution().climbStairs(4))
        debugPrint(ClimbStairsSolution().climbStairs01(4))
    }


}

