class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var dict = [Character: Int]() 
        var uni = [Character: Int]() 
        
        for (index, char) in s.enumerated() { 
            if dict[char] == nil { 
                dict[char] = index
                uni[char] = index
            } else { 
                uni[char] = nil
            }
        }
        
        return uni.values.min() ?? -1
    }
}