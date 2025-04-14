// Linked List: Check if a Linked List is a Palindrome
class ListNode {
    int val;
    ListNode next;
    ListNode(int x) { val = x; }
}

public class linked_list_palindrome_dsa {
    private ListNode front;

    public boolean isPalindrome(ListNode head) {
        front = head;
        return recursivelyCheck(head);
    }

    private boolean recursivelyCheck(ListNode current) {
        if (current != null) {
            if (!recursivelyCheck(current.next)) return false;
            if (current.val != front.val) return false;
            front = front.next;
        }
        return true;
    }
}
