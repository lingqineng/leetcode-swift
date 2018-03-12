//
//  sort.swift
//  leetcode
//
//  Created by lingqineng on 2018/3/12.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

import Foundation

struct sort {
    
    class Solution {
        //冒泡排序，带标志位changed
        func bubbleSort(_ nums:[Int]) -> [Int] {
            var changed = true
            var nums = nums;
            for i in 0..<nums.count {
                if changed {
                    changed = false
                    for j in 1..<nums.count - i {
                        if nums[j] < nums[j-1] {
                            swap(&nums[j], &nums[j-1])
                            changed = true
                        }
                    }
                }
            }
            return nums
        }
        
        // 选择排序
        func selectionSort(_ nums:[Int]) -> [Int] {
            var nums = nums
            for i in 0..<nums.count {
                var minIndex = i;
                for j in i+1..<nums.count {
                    if nums[j]<nums[minIndex] {
                        minIndex = j
                    }
                }
                if minIndex != i {
                    swap(&nums[i], &nums[minIndex])
                }
            }
            return nums
        }
        
        // 插入排序
        func insertSort(_ nums:[Int]) -> [Int] {
            var nums = nums
            for i in 1..<nums.count {
                let temp = nums[i]
                var k = 1
                for j in (1...i).reversed() {
                    if nums[j - 1] > temp {
                        nums[j] = nums[j-1]
                        k = j
                    }
                }
                nums[k - 1] = temp
            }
            return nums
        }
        
        //希尔排序        
        func shellSort(_ nums:[Int]) -> [Int] {
            var nums = nums
            var inc = nums.count / 2
            while inc > 0 {
                for i in inc..<nums.count {
                    let temp = nums[i]
                    var j = i
                    while j >= inc && nums[j - inc] > temp{
                        nums[j] = nums[j - inc]
                        j -= inc
                    }
                    nums[j] = temp
                }
                inc /= 2
            }
            return nums
        }
        
        //堆排序
        func heapSort(_ nums:[Int]) -> [Int] {
            var nums = nums
            for i in (0...nums.count/2).reversed(){
                filterDown(&nums, i, nums.count)
            }
            print(nums)
            for i in (1..<nums.count).reversed(){
                swap(&nums[i], &nums[0])
                filterDown(&nums, 0, i)
            }
            return nums
        }
        //堆排序辅助下滤函数
        func filterDown(_ nums: inout [Int], _ i: Int, _ n: Int) -> Void {
            var i = i
            var child = 2 * i + 1; let temp = nums[i];
            while child < n {
                if child + 1 < n && nums[child + 1] > nums[child] {
                    child += 1
                }
                if temp >= nums[child] {break}
                nums[i] = nums[child]
                i = child
                child = 2 * i + 1
            }
            nums[i] = temp
        }
        
        //归并
        func mergeSort(_ nums: [Int]) -> [Int] {
            var nums = nums
            var array = Array(repeating:0,count:nums.count)
            mSort(&nums, &array, 0, nums.count - 1)
            return nums
        }
        //归并的辅助递归函数
        func mSort(_ nums: inout [Int], _ array: inout [Int], _ l: Int, _ r: Int) -> Void {
            if l < r {
                let mid = (l + r) / 2
                var mid1 = mid + 1
                var l = l;var r = r
                mSort(&nums, &array, l, mid)
                mSort(&nums, &array, mid+1, r)
                merge(&nums, &array, &l, &mid1, &r)
            }
        }
        //数组合并函数
        func merge(_ nums:inout [Int],_ array: inout [Int],_ ls:inout Int,_ rs:inout Int,_ re:inout Int) -> Void {
            let le = rs - 1
            var p = ls
            let n = re - ls + 1
            while ls <= le && rs <= re  {
                if nums[ls] < nums[rs] {
                    array[p] = nums[ls]
                    ls += 1
                } else {
                    array[p] = nums[rs]
                    rs += 1
                }
                p += 1
            }
            while ls <= le {
                array[p] = nums[ls]
                p += 1
                ls += 1
            }
            while rs <= re {
                array[p] = nums[rs]
                p += 1
                rs += 1
            }
            
            for _ in 0..<n {
                nums[re] = array[re]
                re -= 1
            }
        }
        
        //快速排序
        func fastSort(_ nums:inout [Int],_ l:Int,_ r:Int) -> [Int] {
            if l < r {
                var index = sortHelp(&nums, l, r)
                fastSort(&nums, 0, index - 1)
                fastSort(&nums, index + 1, r)
            }
            return nums
        }
        //辅助函数
        func sortHelp(_ nums:inout [Int],_ l: Int,_ r: Int) -> Int {
            let temp = nums[l]
            var l = l; var r = r
            while l < r {
                while l < r && nums[r] >= temp {
                    r -= 1
                }
                if l < r {
                    nums[l] = nums[r]
                    l += 1
                }
                
                while l < r && nums[l] < temp {
                    l += 1
                }
                if l < r {
                    nums[r] = nums[l]
                    r -= 1
                }

            }
            nums[l] = temp
            return l
        }
    }
    
    static func getSolution() -> Void {
        var array = [78,6,1,31,3,25,9]
        print(Solution().fastSort(&array, 0, array.count - 1))
    }
}
