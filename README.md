# leetcode-swift
## About

This Xcode project records my solved problem in [LeetCode Online Judge](https://leetcode.com/problemset/algorithms/).

I hope to be able to provide ideas for everyone to solve the problem on Leetcode OJ through this project.

In this project, I divided the problem into three groups - Easy、Medium、Hard and provide a template.swift to you. If solved a new problem, I will update this project in time!

## Use and Example

To run a specific solution, please change the question number in main.swift e.g. `q169.getSolution()` to run solution for question 169 "Majority Element". 

Attention! Because I write code directly inside leetcode judge web, so many `getSolution()` have no test cases. If you want to test in Xcode, please add test case by yourself!

The structure of each question is as follows:

```swift
struct q169 {
    
    class Solution {
        //1.hash table dictionary
        //time complexity:O(n);space complexity:O(n)
        func majorityElement(_ nums: [Int]) -> Int {
            var numCounts = [Int: Int]()
            for num in nums {
                numCounts[num, default: 0] += 1  
            }
            for (key, value) in numCounts {
                if value > nums.count / 2 {
                    return key
                }
            }
            return 0
        }
        //2.moore vote dictionary
        //time complexity:O(n);space complexity:O(1)
        func majorityElement_1(_ nums: [Int]) -> Int {
            var count = 0;var major = nums.first!
            for i in 0..<nums.count {
                if count == 0 {
                    major = nums[i]
                    count = 1
                } else if major == nums[i] {
                    count += 1
                } else {
                    count -= 1
                }
            }
            return major
        }
    }
    
    static func getSolution() -> Void {
        //do test case here!
    }
}
```
## Notes 
* If you have good advice or a better solution to a problem, I hope you can communicate with me and we can learn from each other.
* Thank you [wty21cn](https://github.com/wty21cn/leetcode-swift) for providing me with template and some problem's ideas.
