class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var j = 0
        
        for i in 0..<nums.count { 
            if nums[i] != 0 {
                if i != j {
                    let temp = nums[i]
                    nums[i] = nums[j]
                    nums[j] = temp
                }
                j += 1
                continue
            }  
        }
    }
}