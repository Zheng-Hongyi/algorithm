//
//  LinkTableHasCycleSolution.swift
//  Algorithm
//
//  Created by Yi on 2020/6/28.
//  Copyright © 2020 Yi. All rights reserved.
//

import Foundation

// Definition for singly-linked list.
 public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init(_ val: Int) {
         self.val = val
         self.next = nil
     }
}

//extension ListNode: Hashable, Equatable {
//
//    public func hash(into hasher: inout Hasher) {
//        hasher.combine(val)
//        hasher.combine(Int(Date().timeIntervalSinceNow))
//    }
//
//    public static func ==(lhs: ListNode, rhs: ListNode) -> Bool {
//        return lhs === rhs
//    }
//}

class LinkTableHasCycleSolution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var result = false
        if head == nil || head?.next == nil {
            return result
        }
        var slow = head
        var fast = head?.next
        while slow?.val != fast?.val {
            if fast == nil || fast?.next == nil {
                return result
            }
            slow = slow?.next
            fast = fast?.next?.next
        }
        result = true
        return result
    }
}
