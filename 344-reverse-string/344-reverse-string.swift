class Solution {
    func reverseString(_ s: inout [Character]) {
        let count = s.count
               
        for i in 0..<count/2 { 
            let index = count-1-i
            let temp = s[i]
            s[i] = s[index]
            s[index] = temp
        }
    }
}