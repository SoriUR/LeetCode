class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        guard let f = matrix.first?.first, f <= target else { return false }
        guard let l = matrix.last?.last, l >= target else { return false }
        
        for i in 0..<matrix.count { 
            let row = matrix[i]
        
            guard row.first! <= target && row.last! >= target else { continue }
        
            return row.contains(target)
        }
        
        return false
    }
}