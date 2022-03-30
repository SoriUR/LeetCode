class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        guard m > 0 else { nums1 = nums2; return }
        guard n > 0 else { return }
        
        var p1 = m-1
        var p2 = n-1
        var target = m+n-1
        
        while p2 >= 0 && p1 >= 0 { 
            let n1 = nums1[p1]
            let n2 = nums2[p2]
            
            if n2 >= n1 { 
                nums1[target] = n2
                p2 -= 1
            } else { 
                nums1[target] = n1
                p1 -= 1
            } 
            target -= 1 
        }     
        
        while p2 >= 0 { 
            nums1[target] = nums2[p2]
            p2 -= 1
            target -= 1
        }
    }
}