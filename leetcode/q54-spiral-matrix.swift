//
//  q54-spiral-matrix.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/30.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Given a matrix of m x n elements (m rows, n columns), return all elements of the matrix in spiral order.
 
 For example,
 Given the following matrix:
 
 [
 [ 1, 2, 3 ],
 [ 4, 5, 6 ],
 [ 7, 8, 9 ]
 ]
 You should return [1,2,3,6,9,8,7,4,5].
 
 */

import Foundation

struct q54 {
    
    class Solution {
        // beats 68.5%  14ms solution
        func spiralOrder(_ matrix: [[Int]]) -> [Int] {
            var array = [Int]()
            if matrix.isEmpty || matrix[0].count == 0 { return array }
            var top = 0; var bottom = matrix.count - 1
            var leftTag = 0; var rightTag = matrix[0].count - 1
            while(true){
                for i in leftTag...rightTag { array.append(matrix[top][i]) }
                top += 1
                if leftTag > rightTag || top > bottom { break }
                
                for i in top...bottom { array.append(matrix[i][rightTag]) }
                rightTag -= 1
                if leftTag > rightTag || top > bottom { break }
                
                for i in (leftTag...rightTag).reversed() { array.append(matrix[bottom][i]) }
                bottom -= 1
                if leftTag > rightTag || top > bottom { break }
                
                for i in (top...bottom).reversed() { array.append(matrix[i][leftTag]) }
                leftTag += 1
                if leftTag > rightTag || top > bottom { break }
            }
            return array
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
