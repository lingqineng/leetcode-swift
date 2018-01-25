//
//  q121-best-time-to-buy-and-sell-stock.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/25.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 
 Say you have an array for which the ith element is the price of a given stock on day i.
 
 If you were only permitted to complete at most one transaction (ie, buy one and sell one share of the stock), design an algorithm to find the maximum profit.
 
 Example 1:
 Input: [7, 1, 5, 3, 6, 4]
 Output: 5
 
 max. difference = 6-1 = 5 (not 7-1 = 6, as selling price needs to be larger than buying price)
 Example 2:
 Input: [7, 6, 4, 3, 1]
 Output: 0
 
 In this case, no transaction is done, i.e. max profit = 0.
 
 */

import Foundation

struct q121 {
    
    class Solution {
        func maxProfit(_ prices: [Int]) -> Int {
            if prices.isEmpty {return 0}
            var maxProfit = 0; var minPrice = prices[0]
            for price in prices {
                maxProfit = max(price - minPrice,maxProfit)
                minPrice = min(minPrice,price)
            }
            return maxProfit
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
