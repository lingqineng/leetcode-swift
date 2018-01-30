//
//  q766-toeplitz-matrix.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/30.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 
 A matrix is Toeplitz if every diagonal from top-left to bottom-right has the same element.
 
 Now given an M x N matrix, return True if and only if the matrix is Toeplitz.
 
 
 Example 1:
 
 Input: matrix = [[1,2,3,4],[5,1,2,3],[9,5,1,2]]
 Output: True
 Explanation:
 1234
 5123
 9512
 
 In the above grid, the diagonals are "[9]", "[5, 5]", "[1, 1, 1]", "[2, 2, 2]", "[3, 3]", "[4]", and in each diagonal all elements are the same, so the answer is True.
 Example 2:
 
 Input: matrix = [[1,2],[2,2]]
 Output: False
 Explanation:
 The diagonal "[1, 2]" has different elements.
 
 */

import Foundation

struct q766 {
    
    class Solution {
        func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
            for i in 0..<matrix.count - 1 {
                for j in 0..<matrix[i].count - 1 {
                    if matrix[i][j] != matrix[i+1][j+1] {
                        return false
                    }
                }
            }
            return true
        } 
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
