/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        guard let p = p, let q = q else { 
            return p == nil && q == nil 
        }
        
        guard p.val == q.val else { return false }
        
        guard isSameTree(p.left, q.left) else { return false }
        return isSameTree(p.right, q.right)
    }
}