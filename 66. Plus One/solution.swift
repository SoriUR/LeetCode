class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits

        for i in stride(from: result.count-1, through: 0, by: -1) {
            let incremented = (result[i] + 1) % 10
            result[i] = incremented
            if incremented != 0 { break }
        }

        if result[0] == 0 {
            result.insert(1, at: 0)
        }

        return result
    }
}