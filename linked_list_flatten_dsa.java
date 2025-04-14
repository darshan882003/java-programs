// Linked List: Flatten a Linked List with Next and Child Pointers
class ListNode {
    int val;
    ListNode next;
    ListNode child;
    ListNode(int x) { val = x; }
}

public class linked_list_flatten_dsa {
    public ListNode flatten(ListNode head) {
        if (head == null) return null;
        ListNode current = head;
        while (current != null) {
            if (current.child != null) {
                ListNode temp = current.next;
                current.next = flatten(current.child);
                current.child = null;
                ListNode tail = current.next;
                while (tail.next != null) {
                    tail = tail.next;
                }
                tail.next = temp;
            }
            current = current.next;
        }
        return head;
    }
}
