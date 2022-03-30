class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var islandNumber = 0
        var sums = [Int: Sum]()
        var sumsCount = 0
        var dict = [Int: Int]() 
        var maxIslandSize = 0
        var iteration = 0
                
        let iCount = grid.count
        for i in 0..<iCount { 
            let jCount = grid[i].count
            for j in 0..<jCount {                 
                var curr = grid[i][j]
                
                guard curr > 0 else { 
                    iteration += 1
                    continue 
                }
                                
                var topSum: Sum?
                var topSumIndex: Int?
                
                if i > 0, grid[i-1][j] > 0 { 
                    topSumIndex = dict[iteration-jCount]!
                    topSum = sums[topSumIndex!]
                }
                
                var leftSum: Sum?
                var leftSumIndex: Int?
                
                if j > 0, grid[i][j-1] > 0 { 
                    leftSumIndex = dict[iteration-1]!
                    leftSum = sums[leftSumIndex!]
                }
                
                let sum: Sum
                
                if topSum != nil, leftSum != nil, topSum! !== leftSum! { 
                    sum = Sum(value: topSum!.value + leftSum!.value) 
                    sums[leftSumIndex!] = sum
                    sums[topSumIndex!] = sum
                    dict[iteration] = leftSumIndex!
                    for (key, value) in sums { 
                        if value === topSum || value === leftSum { 
                            sums[key] = sum
                        }
                    }
                    // print("\(i) \(j) both \(sum.value) \(iteration)")
                } else if topSum != nil {
                    sum = topSum!
                    dict[iteration] = topSumIndex!
                    // print("\(i) \(j) top \(sum.value) \(iteration)")
                } else if leftSum != nil { 
                    sum = leftSum!
                    dict[iteration] = leftSumIndex!
                    // print("\(i) \(j) left \(sum.value) \(iteration)")
                } else { 
                    sum = Sum()
                    sums[sumsCount] = sum
                    dict[iteration] = sumsCount
                    sumsCount += 1
                    // print("\(i) \(j) new \(sum.value) \(iteration)")
                }
                
                sum.value += 1
                
                maxIslandSize = max(maxIslandSize, sum.value)            
                
                iteration += 1
                
                // print(dict)
                // print("sums")
                // sums.enumerated().forEach {
                //     print($0.0, $0.1.value.value)
                // }
                // print("---")
            }
        }
        
        // print(dict)
        // print(sums)
        // print(sums[0]!.value)
        // print(sums[1]!.value)
        // print(sums[2]!.value)
        // print(sums[3]!.value)
        
        return maxIslandSize
    }
}

class Sum { 
    var value: Int
    
    init(value: Int = 0) { 
        self.value = value
    }
}