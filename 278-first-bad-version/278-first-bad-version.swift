/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
            
        return bSearch(1, n)
    }
    
    func bSearch(_ start: Int, _ finish: Int) -> Int { 
        
        guard finish - start > 1 else { 
            return isBadVersion(start) ? start : finish
        }
        
        let middle = (finish - start)/2 + start
        
        if isBadVersion(middle) { 
            return bSearch(1, middle)
        } else { 
            return bSearch(middle+1, finish)
        }
    }
}