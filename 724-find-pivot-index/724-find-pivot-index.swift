class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        
        var leftSum = Array(repeating: 0, count: nums.count)
        var rightSum = Array(repeating: 0, count: nums.count)
        
        for i in 0..<nums.count {
            let left = i > 0 ? leftSum[i-1] : 0
            let rightIndex = nums.count-1-i
            let right = i > 0 ? rightSum[rightIndex+1] : 0
            
            leftSum[i] = left + nums[i]
            rightSum[rightIndex] = right + nums[rightIndex]
        }
            
        for i in 0..<nums.count { 
            let left = i != 0 ? leftSum[i-1] : 0
            let right = i != nums.count-1 ? rightSum[i+1] : 0
            
            if left == right { return i }
        }
        
        return -1
    }
}