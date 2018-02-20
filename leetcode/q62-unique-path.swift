//
//  q62-unique-path.swift
//  leetcode
//
//  Created by lingqineng on 2018/2/20.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

// A robot is located at the top-left corner of a m x n grid (marked 'Start' in the diagram below).

// The robot can only move either down or right at any point in time. The robot is trying to reach the bottom-right corner of the grid (marked 'Finish' in the diagram below).

// How many possible unique paths are there?

import Foundation

struct q62 {
    
    class Solution {
        func uniquePaths(_ m: Int, _ n: Int) -> Int {
            var array = Array<Array<Int>>(repeating: Array<Int>(repeating: 0,count: n),count: m)
            for i in 0..<m {
              for j in 0..<n {
                    if i == 0 || j == 0 {
                        array[i][j] = 1
                    } else {
                        array[i][j] = array[i - 1][j] + array[i][j - 1]
                    }
                }
            }
            return array[m - 1][n - 1]
        }
    }
    
    static func getSolution() -> Void {
        print(Solution().uniquePaths(2,3))
    }
}