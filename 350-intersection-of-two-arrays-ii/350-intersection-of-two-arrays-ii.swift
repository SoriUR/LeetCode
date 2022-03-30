class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var dict = [Int: Int]()   
        
        for (i, num) in nums1.enumerated() {  
            dict[num] = (dict[num] ?? 0) + 1
        }
        
        var result = [Int]()
        
        for num in nums2 { 
            if let v = dict[num], v > 0 { 
                result.append(num)
                dict[num] = v-1
            }
        }   
        
        return result
    }
}