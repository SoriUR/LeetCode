class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        return bSearch(nums, target, 0) ?? -1
    }

    func bSearch(_ nums: [Int], _ target: Int, _ startIndex: Int) -> Int? {

        guard nums.count > 1 else {
            return nums[0] == target ? startIndex : nil
        }

        let middle = nums.count / 2
        let item = nums[middle]

        if target < item {
            return bSearch(Array(nums[0..<middle]), target, startIndex)
        } else {
            return bSearch(Array(nums[middle...]), target, startIndex + middle)
        }
    }
}