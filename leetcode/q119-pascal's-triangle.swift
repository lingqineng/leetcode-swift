//
//  q119-pascal's-triangle.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/25.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Given an index k, return the kth row of the Pascal's triangle.
 
 For example, given k = 3,
 Return [1,3,3,1].
 
 */

import Foundation

struct q119 {
    
    class Solution {
        func getRow(_ rowIndex: Int) -> [Int] {
            if rowIndex == 0 {return [1]}
            var i = 0; var preArr = [Int]()
            while i < rowIndex + 1{
                var array = [1]
                var j = 0
                while j < i - 1 {
                    let val = preArr[j] + preArr[j + 1]
                    array.append(val)
                    j += 1
                }
                array.append(1)
                preArr = array
                i += 1
            }
            return preArr
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
