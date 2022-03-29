class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var result = nums[0]
        
        var prev = nums[0]
        
        for i in 1..<nums.count { 
            prev = max(nums[i], prev + nums[i])
            result = max(result, prev)
        } 
        
        return result
    }
}