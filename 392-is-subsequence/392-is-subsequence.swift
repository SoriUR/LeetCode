class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
    
        let array = Array(s)
        var j = 0
        
        for index in t.indices { 
            if j == array.count { return true }
            
            let curr = t[index]
            if curr == array[j] { 
                j += 1
            }
        }
        
        return  j == array.count
    }
}