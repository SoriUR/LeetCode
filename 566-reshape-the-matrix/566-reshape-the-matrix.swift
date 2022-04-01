class Solution {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        
        guard mat.count * mat[0].count == r*c else {
            return mat
        }
        
        var answ = Array(repeating: Array(repeating: 0, count: c), count: r)        
        var iteration = 0
        
        for i in 0..<mat.count { 
            for j in 0..<mat[i].count { 
                
                let i1 = iteration / c
                let j1 = iteration % c
                
                answ[i1][j1] = mat[i][j]
                
                iteration += 1
            }
        }
        
        return answ
    }
}
