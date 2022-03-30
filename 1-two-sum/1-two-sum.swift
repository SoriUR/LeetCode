class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        
        for i in 0..<nums.count { 
            let num = nums[i]
            let diff = target - num
            if let add = dict[diff] { 
                return [i, add]
            }
            dict[num] = i
        }
        
        return [0]
    }
}