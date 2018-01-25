//
//  q118-pascal's-triangle.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/18.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Given numRows, generate the first numRows of Pascal's triangle.
 
 For example, given numRows = 5,
 Return
 
 [
 [1],
 [1,1],
 [1,2,1],
 [1,3,3,1],
 [1,4,6,4,1]
 ]
 
 */

import Foundation

struct q118 {
    
    class Solution {
        func generate(_ numRows: Int) -> [[Int]] {
            guard numRows > 0 else {return []}
            var rows:[[Int]] = [[1]]
            while numRows > rows.count {
                var newRow:[Int] = [1]
                let prevRowI = rows.count - 1
                for i in 1..<rows.count {
                    let val = rows[prevRowI][i - 1] + rows[prevRowI][i]
                    newRow.append(val)
                }
                newRow.append(1)
                rows.append(newRow)
            }
            return rows
        }
        func generate1(_ numRows: Int) -> [[Int]] {
            var i = 0; var array = [[Int]]()
            while i < numRows {
                var j = 0; var temp = Array(repeating: 0, count: i+1)
                temp[0] = 1; temp[i] = 1
                while j < i - 1 {
                    var preArr = array[i-1]
                    temp[j + 1] = preArr[j] + preArr[j + 1]
                    j += 1
                }
                array.append(temp)
                i += 1
            }
            
            return array;
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
