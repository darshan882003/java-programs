// Linked List: Detect a Cycle in a Linked List
class ListNode {
    int val;
    ListNode next;
    ListNode(int x) { val = x; }
}

public class linked_list_cycle_detection_dsa {
    public boolean hasCycle(ListNode head) {
        if (head == null) return false;
        ListNode slow = head;
        ListNode fast = head;
        while (fast != null && fast.next != null) {
            slow = slow.next;
            fast = fast.next.next;
            if (slow == fast) return true;
        }
        return false;
    }
}
