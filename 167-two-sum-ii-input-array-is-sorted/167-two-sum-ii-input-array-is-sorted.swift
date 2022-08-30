class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        
        for (index, number) in numbers.enumerated() { 
            let diff = target - number
            
            if let ind = dict[diff] { 
                return [ind+1, index+1]
            }
            
            dict[number] = index
        }
        
        return []
    }
}