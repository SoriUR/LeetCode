class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        
        var column = [Int: [Character]]()
        var cube = [Int: [Character]]()
        
        for i in 0..<board.count { 
            var row = [Character]()
            for j in 0..<board[i].count { 
                let v = board[i][j]
                guard v != "." else { continue }
                
                if row.contains(v) { return false }
                row.append(v)
                
                let c = column[j] ?? []
                if c.contains(v) { return false }
                column[j] = c + [v]
                
                let index = (j / 3) + ((i / 3) * 3)
                let sq = cube[index] ?? []
                if sq.contains(v) { return false }
                cube[index] = sq + [v]
            }
        }
        
        return true
    }
}