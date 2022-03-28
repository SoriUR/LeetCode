class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        guard numRows > 1 else { return [[1]] }
        guard numRows > 2 else { return [[1], [1, 1]] }
        
        var result: [[Int]] = [[1], [1, 1]]
        result.reserveCapacity(numRows)

       for row in 3...numRows {
            let prev = result[row-2]
            var new = [1, 1]
            new.reserveCapacity(row)
            let count = (row-2)/2 + (row % 2)
            for i in 1...count {
                let v = prev[i-1] + prev[i]
                new.insert(v, at: i)
                if i != count || (row % 2 == 0) {
                    new.insert(v, at: i+1)
                }

                print(row, new)
            }
            result.append(new)
        }
        
        return result
    }
}