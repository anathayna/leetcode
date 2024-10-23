import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?

    public init() {
        self.val = 0
        self.left = nil
        self.right = nil
    }

    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }

    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var result: [Int] = []
        recursiveInorderTraversal(root, &result)
        return result
    }
    
    func recursiveInorderTraversal(_ root: TreeNode?, _ result: inout [Int]) {
        guard let root = root else { return }
        recursiveInorderTraversal(root.left, &result)
        result.append(root.val)
        recursiveInorderTraversal(root.right, &result)
    }
    
    func stackInorderTraversal(_ root: TreeNode?) -> [Int] {
        var result: [Int] = []
        var stack = [TreeNode]()
        var current = root
        
        while current != nil || !stack.isEmpty {
            while current != nil {
                stack.append(current!)
                current = current!.left
            }
            current = stack.removeLast()
            result.append(current!.val)
            current = current!.right
        }
        
        return result
    }
}

func arrayToTree(_ array: [Int?]) -> TreeNode? {
    guard !array.isEmpty else { return nil }
    
    let nodes: [TreeNode?] = array.map { $0 != nil ? TreeNode($0!) : nil }
    
    for i in 0..<nodes.count {
        if let node = nodes[i] {
            let leftIndex = 2 * i + 1
            let rightIndex = 2 * i + 2
            
            if leftIndex < nodes.count {
                node.left = nodes[leftIndex]
            }
            
            if rightIndex < nodes.count {
                node.right = nodes[rightIndex]
            }
        }
    }
    
    return nodes[0]
}

Solution().inorderTraversal(arrayToTree([1,nil,2,3]))
Solution().inorderTraversal(arrayToTree([1,2,3,4,5,nil,8,nil,nil,6,7,9]))
Solution().inorderTraversal(arrayToTree([]))
Solution().inorderTraversal(arrayToTree([1]))
