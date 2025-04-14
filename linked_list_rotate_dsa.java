// Linked List: Rotate a Linked List
class ListNode {
    int val;
    ListNode next;
    ListNode(int x) { val = x; }
}

public class linked_list_rotate_dsa {
    public ListNode rotateRight(ListNode head, int k) {
        if (head == null || head.next == null || k == 0) return head;

        // Find the length of the list
        ListNode current = head;
        int length = 1;
        while (current.next != null) {
            current = current.next;
            length++;
        }

        // Connect the last node to the head to form a circle
        current.next = head;

        // Find the new head after rotation
        k = k % length;
        int stepsToNewHead = length - k;
        ListNode newTail = head;
        for (int i = 1; i < stepsToNewHead; i++) {
            newTail = newTail.next;
        }

        // Break the circle to finalize the new list
        ListNode newHead = newTail.next;
        newTail.next = null;

        return newHead;
    }
}
