// Linked List: Find the Middle Element of a Linked List
class ListNode {
    int val;
    ListNode next;
    ListNode(int x) { val = x; }
}

public class linked_list_middle_element_dsa {
    public ListNode middleNode(ListNode head) {
        ListNode slow = head;
        ListNode fast = head;
        while (fast != null && fast.next != null) {
            slow = slow.next;
            fast = fast.next.next;
        }
        return slow;
    }
}
