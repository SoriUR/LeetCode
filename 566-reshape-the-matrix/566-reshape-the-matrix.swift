class Solution {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        
        var answ = [[Int]]()
        answ.reserveCapacity(r)
        
        var iteration = 0
        
        let iCount = mat.count
        for i in 0..<iCount { 
            let jCount = mat[i].count
            for j in 0..<jCount { 
                
                let i1 = iteration / c
                let j1 = iteration % c
                
                if i1 == answ.count { 
                    var col = [Int]()
                    col.reserveCapacity(c)
                    answ.append(col)
                }
                
                answ[i1].append(mat[i][j])
                
                iteration += 1
            }
        }
        
        if iteration == (r * c) {
            return answ
        }
        return mat
    }
}
