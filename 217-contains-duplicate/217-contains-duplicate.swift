class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dict: [Int: Bool] = [:]
        
        for num in nums { 
            if dict[num] != nil { 
                return true
            }
            dict[num] = true
        }
        
        return false
    }
}