class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var answ = 0
        var minP = Int.max
        
        for price in prices { 
            minP = min(minP, price)
            answ = max(answ, price-minP)
        }
        
        return answ
    }
}