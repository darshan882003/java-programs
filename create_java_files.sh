# # # # # # 


# # # # # cat > string_reverse_dsa.java <<EOF
# # # # # // String Manipulation: Reverse a String
# # # # # import java.util.Scanner;

# # # # # public class string_reverse_dsa {
# # # # #     public static void main(String[] args) {
# # # # #         Scanner scanner = new Scanner(System.in);
# # # # #         System.out.print("Enter a string: ");
# # # # #         String str = scanner.nextLine();
# # # # #         String reversed = new StringBuilder(str).reverse().toString();
# # # # #         System.out.println("Reversed String: " + reversed);
# # # # #         scanner.close();
# # # # #     }
# # # # # }
# # # # # EOF

# # # # # cat > string_palindrome_dsa.java <<EOF
# # # # # // String Manipulation: Check if a String is a Palindrome
# # # # # import java.util.Scanner;

# # # # # public class string_palindrome_dsa {
# # # # #     public static boolean isPalindrome(String str) {
# # # # #         int left = 0, right = str.length() - 1;
# # # # #         while (left < right) {
# # # # #             if (str.charAt(left) != str.charAt(right)) {
# # # # #                 return false;
# # # # #             }
# # # # #             left++;
# # # # #             right--;
# # # # #         }
# # # # #         return true;
# # # # #     }

# # # # #     public static void main(String[] args) {
# # # # #         Scanner scanner = new Scanner(System.in);
# # # # #         System.out.print("Enter a string: ");
# # # # #         String str = scanner.nextLine();
# # # # #         if (isPalindrome(str)) {
# # # # #             System.out.println("The string is a palindrome.");
# # # # #         } else {
# # # # #             System.out.println("The string is not a palindrome.");
# # # # #         }
# # # # #         scanner.close();
# # # # #     }
# # # # # }
# # # # # EOF

# # # # # cat > first_non_repeating_char_dsa.java <<EOF
# # # # # // String Manipulation: Find the First Non-Repeating Character in a String
# # # # # import java.util.Scanner;
# # # # # import java.util.HashMap;

# # # # # public class first_non_repeating_char_dsa {
# # # # #     public static char firstNonRepeatingChar(String str) {
# # # # #         HashMap<Character, Integer> map = new HashMap<>();
# # # # #         for (char c : str.toCharArray()) {
# # # # #             map.put(c, map.getOrDefault(c, 0) + 1);
# # # # #         }
# # # # #         for (char c : str.toCharArray()) {
# # # # #             if (map.get(c) == 1) {
# # # # #                 return c;
# # # # #             }
# # # # #         }
# # # # #         return '\0'; // If no non-repeating character
# # # # #     }

# # # # #     public static void main(String[] args) {
# # # # #         Scanner scanner = new Scanner(System.in);
# # # # #         System.out.print("Enter a string: ");
# # # # #         String str = scanner.nextLine();
# # # # #         char result = firstNonRepeatingChar(str);
# # # # #         if (result != '\0') {
# # # # #             System.out.println("First non-repeating character: " + result);
# # # # #         } else {
# # # # #             System.out.println("No non-repeating character found.");
# # # # #         }
# # # # #         scanner.close();
# # # # #     }
# # # # # }
# # # # # EOF

# # # # # cat > string_frequency_dsa.java <<EOF
# # # # # // String Manipulation: Count the Frequency of Each Character in a String
# # # # # import java.util.Scanner;
# # # # # import java.util.HashMap;

# # # # # public class string_frequency_dsa {
# # # # #     public static void countFrequency(String str) {
# # # # #         HashMap<Character, Integer> map = new HashMap<>();
# # # # #         for (char c : str.toCharArray()) {
# # # # #             map.put(c, map.getOrDefault(c, 0) + 1);
# # # # #         }
# # # # #         for (char c : map.keySet()) {
# # # # #             System.out.println(c + ": " + map.get(c));
# # # # #         }
# # # # #     }

# # # # #     public static void main(String[] args) {
# # # # #         Scanner scanner = new Scanner(System.in);
# # # # #         System.out.print("Enter a string: ");
# # # # #         String str = scanner.nextLine();
# # # # #         countFrequency(str);
# # # # #         scanner.close();
# # # # #     }
# # # # # }
# # # # # EOF

# # # # # cat > string_anagram_check_dsa.java <<EOF
# # # # # // String Manipulation: Check if Two Strings are Anagrams of Each Other
# # # # # import java.util.Scanner;
# # # # # import java.util.Arrays;

# # # # # public class string_anagram_check_dsa {
# # # # #     public static boolean areAnagrams(String str1, String str2) {
# # # # #         if (str1.length() != str2.length()) {
# # # # #             return false;
# # # # #         }
# # # # #         char[] arr1 = str1.toCharArray();
# # # # #         char[] arr2 = str2.toCharArray();
# # # # #         Arrays.sort(arr1);
# # # # #         Arrays.sort(arr2);
# # # # #         return Arrays.equals(arr1, arr2);
# # # # #     }

# # # # #     public static void main(String[] args) {
# # # # #         Scanner scanner = new Scanner(System.in);
# # # # #         System.out.print("Enter first string: ");
# # # # #         String str1 = scanner.nextLine();
# # # # #         System.out.print("Enter second string: ");
# # # # #         String str2 = scanner.nextLine();
# # # # #         if (areAnagrams(str1, str2)) {
# # # # #             System.out.println("The strings are anagrams.");
# # # # #         } else {
# # # # #             System.out.println("The strings are not anagrams.");
# # # # #         }
# # # # #         scanner.close();
# # # # #     }
# # # # # }
# # # # # EOF

# # # # # cat > implement_strstr_dsa.java <<EOF
# # # # # // String Manipulation: Implement strstr() Function (Substring Search)
# # # # # import java.util.Scanner;

# # # # # public class implement_strstr_dsa {
# # # # #     public static int strstr(String haystack, String needle) {
# # # # #         if (needle.length() == 0) {
# # # # #             return 0;
# # # # #         }
# # # # #         for (int i = 0; i <= haystack.length() - needle.length(); i++) {
# # # # #             if (haystack.substring(i, i + needle.length()).equals(needle)) {
# # # # #                 return i;
# # # # #             }
# # # # #         }
# # # # #         return -1;
# # # # #     }

# # # # #     public static void main(String[] args) {
# # # # #         Scanner scanner = new Scanner(System.in);
# # # # #         System.out.print("Enter the haystack string: ");
# # # # #         String haystack = scanner.nextLine();
# # # # #         System.out.print("Enter the needle string: ");
# # # # #         String needle = scanner.nextLine();
# # # # #         int result = strstr(haystack, needle);
# # # # #         if (result != -1) {
# # # # #             System.out.println("Substring found at index: " + result);
# # # # #         } else {
# # # # #             System.out.println("Substring not found.");
# # # # #         }
# # # # #         scanner.close();
# # # # #     }
# # # # # }
# # # # # EOF

# # # # # cat > longest_common_prefix_dsa.java <<EOF
# # # # # // String Manipulation: Find the Longest Common Prefix Among a Set of Strings
# # # # # import java.util.Scanner;

# # # # # public class longest_common_prefix_dsa {
# # # # #     public static String longestCommonPrefix(String[] strs) {
# # # # #         if (strs == null || strs.length == 0) {
# # # # #             return "";
# # # # #         }
# # # # #         String prefix = strs[0];
# # # # #         for (int i = 1; i < strs.length; i++) {
# # # # #             while (strs[i].indexOf(prefix) != 0) {
# # # # #                 prefix = prefix.substring(0, prefix.length() - 1);
# # # # #                 if (prefix.isEmpty()) {
# # # # #                     return "";
# # # # #                 }
# # # # #             }
# # # # #         }
# # # # #         return prefix;
# # # # #     }

# # # # #     public static void main(String[] args) {
# # # # #         Scanner scanner = new Scanner(System.in);
# # # # #         System.out.print("Enter the number of strings: ");
# # # # #         int n = scanner.nextInt();
# # # # #         scanner.nextLine();  // Consume the newline character
# # # # #         String[] strs = new String[n];
# # # # #         System.out.println("Enter " + n + " strings:");
# # # # #         for (int i = 0; i < n; i++) {
# # # # #             strs[i] = scanner.nextLine();
# # # # #         }
# # # # #         System.out.println("Longest Common Prefix: " + longestCommonPrefix(strs));
# # # # #         scanner.close();
# # # # #     }
# # # # # }
# # # # # EOF

# # # # # cat > string_to_integer_dsa.java <<EOF
# # # # # // String Manipulation: Convert a String to an Integer (Implement atoi)
# # # # # import java.util.Scanner;

# # # # # public class string_to_integer_dsa {
# # # # #     public static int myAtoi(String str) {
# # # # #         str = str.trim();
# # # # #         if (str.isEmpty()) {
# # # # #             return 0;
# # # # #         }
# # # # #         int sign = 1, i = 0, result = 0;
# # # # #         if (str.charAt(i) == '-') {
# # # # #             sign = -1;
# # # # #             i++;
# # # # #         } else if (str.charAt(i) == '+') {
# # # # #             i++;
# # # # #         }
# # # # #         while (i < str.length() && Character.isDigit(str.charAt(i))) {
# # # # #             result = result * 10 + (str.charAt(i) - '0');
# # # # #             i++;
# # # # #         }
# # # # #         return sign * result;
# # # # #     }

# # # # #     public static void main(String[] args) {
# # # # #         Scanner scanner = new Scanner(System.in);
# # # # #         System.out.print("Enter a string: ");
# # # # #         String str = scanner.nextLine();
# # # # #         System.out.println("Converted Integer: " + myAtoi(str));
# # # # #         scanner.close();
# # # # #     }
# # # # # }
# # # # # EOF

# # # # # cat > all_substrings_dsa.java <<EOF
# # # # # // String Manipulation: Generate All Possible Substrings of a String
# # # # # import java.util.Scanner;

# # # # # public class all_substrings_dsa {
# # # # #     public static void generateSubstrings(String str) {
# # # # #         for (int i = 0; i < str.length(); i++) {
# # # # #             for (int j = i + 1; j <= str.length(); j++) {
# # # # #                 System.out.println(str.substring(i, j));
# # # # #             }
# # # # #         }
# # # # #     }

# # # # #     public static void main(String[] args) {
# # # # #         Scanner scanner = new Scanner(System.in);
# # # # #         System.out.print("Enter a string: ");
# # # # #         String str = scanner.nextLine();
# # # # #         generateSubstrings(str);
# # # # #         scanner.close();
# # # # #     }
# # # # # }
# # # # # EOF

# # # # # cat > regex_matching_dsa.java <<EOF
# # # # # // String Manipulation: Implement Regular Expression Matching with Support for '.' and '*'
# # # # # public class regex_matching_dsa {
# # # # #     public static boolean isMatch(String s, String p) {
# # # # #         if (p.isEmpty()) {
# # # # #             return s.isEmpty();
# # # # #         }
# # # # #         boolean first_match = (!s.isEmpty() && (p.charAt(0) == s.charAt(0) || p.charAt(0) == '.'));
# # # # #         if (p.length() >= 2 && p.charAt(1) == '*') {
# # # # #             return (isMatch(s, p.substring(2)) || (first_match && isMatch(s.substring(1), p)));
# # # # #         } else {
# # # # #             return first_match && isMatch(s.substring(1), p.substring(1));
# # # # #         }
# # # # #     }

# # # # #     public static void main(String[] args) {
# # # # #         String s = "aa";
# # # # #         String p = "a*";
# # # # #         System.out.println("Regex match result: " + isMatch(s, p));
# # # # #     }
# # # # # }
# # # # # EOF



# # # # cat > linked_list_reverse_dsa.java <<EOF
# # # # // Linked List: Reverse a Linked List
# # # # class ListNode {
# # # #     int val;
# # # #     ListNode next;
# # # #     ListNode(int x) { val = x; }
# # # # }

# # # # public class linked_list_reverse_dsa {
# # # #     public ListNode reverseList(ListNode head) {
# # # #         ListNode prev = null;
# # # #         ListNode curr = head;
# # # #         while (curr != null) {
# # # #             ListNode nextTemp = curr.next;
# # # #             curr.next = prev;
# # # #             prev = curr;
# # # #             curr = nextTemp;
# # # #         }
# # # #         return prev;
# # # #     }
# # # # }
# # # # EOF

# # # # cat > linked_list_cycle_detection_dsa.java <<EOF
# # # # // Linked List: Detect a Cycle in a Linked List
# # # # class ListNode {
# # # #     int val;
# # # #     ListNode next;
# # # #     ListNode(int x) { val = x; }
# # # # }

# # # # public class linked_list_cycle_detection_dsa {
# # # #     public boolean hasCycle(ListNode head) {
# # # #         if (head == null) return false;
# # # #         ListNode slow = head;
# # # #         ListNode fast = head;
# # # #         while (fast != null && fast.next != null) {
# # # #             slow = slow.next;
# # # #             fast = fast.next.next;
# # # #             if (slow == fast) return true;
# # # #         }
# # # #         return false;
# # # #     }
# # # # }
# # # # EOF

# # # # cat > linked_list_middle_element_dsa.java <<EOF
# # # # // Linked List: Find the Middle Element of a Linked List
# # # # class ListNode {
# # # #     int val;
# # # #     ListNode next;
# # # #     ListNode(int x) { val = x; }
# # # # }

# # # # public class linked_list_middle_element_dsa {
# # # #     public ListNode middleNode(ListNode head) {
# # # #         ListNode slow = head;
# # # #         ListNode fast = head;
# # # #         while (fast != null && fast.next != null) {
# # # #             slow = slow.next;
# # # #             fast = fast.next.next;
# # # #         }
# # # #         return slow;
# # # #     }
# # # # }
# # # # EOF

# # # # cat > linked_list_merge_sorted_dsa.java <<EOF
# # # # // Linked List: Merge Two Sorted Linked Lists
# # # # class ListNode {
# # # #     int val;
# # # #     ListNode next;
# # # #     ListNode(int x) { val = x; }
# # # # }

# # # # public class linked_list_merge_sorted_dsa {
# # # #     public ListNode mergeTwoLists(ListNode l1, ListNode l2) {
# # # #         ListNode dummy = new ListNode(0);
# # # #         ListNode current = dummy;
# # # #         while (l1 != null && l2 != null) {
# # # #             if (l1.val < l2.val) {
# # # #                 current.next = l1;
# # # #                 l1 = l1.next;
# # # #             } else {
# # # #                 current.next = l2;
# # # #                 l2 = l2.next;
# # # #             }
# # # #             current = current.next;
# # # #         }
# # # #         if (l1 != null) current.next = l1;
# # # #         if (l2 != null) current.next = l2;
# # # #         return dummy.next;
# # # #     }
# # # # }
# # # # EOF

# # # # cat > linked_list_remove_nth_from_end_dsa.java <<EOF
# # # # // Linked List: Remove the N-th Node from the End of a Linked List
# # # # class ListNode {
# # # #     int val;
# # # #     ListNode next;
# # # #     ListNode(int x) { val = x; }
# # # # }

# # # # public class linked_list_remove_nth_from_end_dsa {
# # # #     public ListNode removeNthFromEnd(ListNode head, int n) {
# # # #         ListNode dummy = new ListNode(0);
# # # #         dummy.next = head;
# # # #         ListNode first = dummy;
# # # #         ListNode second = dummy;
# # # #         for (int i = 1; i <= n + 1; i++) {
# # # #             first = first.next;
# # # #         }
# # # #         while (first != null) {
# # # #             first = first.next;
# # # #             second = second.next;
# # # #         }
# # # #         second.next = second.next.next;
# # # #         return dummy.next;
# # # #     }
# # # # }
# # # # EOF

# # # # cat > linked_list_intersection_point_dsa.java <<EOF
# # # # // Linked List: Find the Intersection Point of Two Linked Lists
# # # # class ListNode {
# # # #     int val;
# # # #     ListNode next;
# # # #     ListNode(int x) { val = x; }
# # # # }

# # # # public class linked_list_intersection_point_dsa {
# # # #     public ListNode getIntersectionNode(ListNode headA, ListNode headB) {
# # # #         if (headA == null || headB == null) return null;
# # # #         ListNode a = headA;
# # # #         ListNode b = headB;
# # # #         while (a != b) {
# # # #             a = (a == null) ? headB : a.next;
# # # #             b = (b == null) ? headA : b.next;
# # # #         }
# # # #         return a;
# # # #     }
# # # # }
# # # # EOF

# # # # cat > linked_list_flatten_dsa.java <<EOF
# # # # // Linked List: Flatten a Linked List with Next and Child Pointers
# # # # class ListNode {
# # # #     int val;
# # # #     ListNode next;
# # # #     ListNode child;
# # # #     ListNode(int x) { val = x; }
# # # # }

# # # # public class linked_list_flatten_dsa {
# # # #     public ListNode flatten(ListNode head) {
# # # #         if (head == null) return null;
# # # #         ListNode current = head;
# # # #         while (current != null) {
# # # #             if (current.child != null) {
# # # #                 ListNode temp = current.next;
# # # #                 current.next = flatten(current.child);
# # # #                 current.child = null;
# # # #                 ListNode tail = current.next;
# # # #                 while (tail.next != null) {
# # # #                     tail = tail.next;
# # # #                 }
# # # #                 tail.next = temp;
# # # #             }
# # # #             current = current.next;
# # # #         }
# # # #         return head;
# # # #     }
# # # # }
# # # # EOF

# # # # cat > linked_list_add_numbers_dsa.java <<EOF
# # # # // Linked List: Add Two Numbers Represented by Linked Lists
# # # # class ListNode {
# # # #     int val;
# # # #     ListNode next;
# # # #     ListNode(int x) { val = x; }
# # # # }

# # # # public class linked_list_add_numbers_dsa {
# # # #     public ListNode addTwoNumbers(ListNode l1, ListNode l2) {
# # # #         ListNode dummy = new ListNode(0);
# # # #         ListNode p = l1, q = l2, current = dummy;
# # # #         int carry = 0;
# # # #         while (p != null || q != null || carry != 0) {
# # # #             int x = (p != null) ? p.val : 0;
# # # #             int y = (q != null) ? q.val : 0;
# # # #             int sum = carry + x + y;
# # # #             carry = sum / 10;
# # # #             current.next = new ListNode(sum % 10);
# # # #             current = current.next;
# # # #             if (p != null) p = p.next;
# # # #             if (q != null) q = q.next;
# # # #         }
# # # #         return dummy.next;
# # # #     }
# # # # }
# # # # EOF

# # # # cat > linked_list_palindrome_dsa.java <<EOF
# # # # // Linked List: Check if a Linked List is a Palindrome
# # # # class ListNode {
# # # #     int val;
# # # #     ListNode next;
# # # #     ListNode(int x) { val = x; }
# # # # }

# # # # public class linked_list_palindrome_dsa {
# # # #     private ListNode front;

# # # #     public boolean isPalindrome(ListNode head) {
# # # #         front = head;
# # # #         return recursivelyCheck(head);
# # # #     }

# # # #     private boolean recursivelyCheck(ListNode current) {
# # # #         if (current != null) {
# # # #             if (!recursivelyCheck(current.next)) return false;
# # # #             if (current.val != front.val) return false;
# # # #             front = front.next;
# # # #         }
# # # #         return true;
# # # #     }
# # # # }
# # # # EOF

# # # # cat > linked_list_rotate_dsa.java <<EOF
# # # # // Linked List: Rotate a Linked List
# # # # class ListNode {
# # # #     int val;
# # # #     ListNode next;
# # # #     ListNode(int x) { val = x; }
# # # # }

# # # # public class linked_list_rotate_dsa {
# # # #     public ListNode rotateRight(ListNode head, int k) {
# # # #         if (head == null || head.next == null || k == 0) return head;

# # # #         // Find the length of the list
# # # #         ListNode current = head;
# # # #         int length = 1;
# # # #         while (current.next != null) {
# # # #             current = current.next;
# # # #             length++;
# # # #         }

# # # #         // Connect the last node to the head to form a circle
# # # #         current.next = head;

# # # #         // Find the new head after rotation
# # # #         k = k % length;
# # # #         int stepsToNewHead = length - k;
# # # #         ListNode newTail = head;
# # # #         for (int i = 1; i < stepsToNewHead; i++) {
# # # #             newTail = newTail.next;
# # # #         }

# # # #         // Break the circle to finalize the new list
# # # #         ListNode newHead = newTail.next;
# # # #         newTail.next = null;

# # # #         return newHead;
# # # #     }
# # # # }
# # # # EOF


# # # # cat > stack_queue_stack_array_dsa.java <<EOF
# # # # // Stack and Queue: Implement a Stack using Arrays
# # # # public class stack_queue_stack_array_dsa {
# # # #     static class Stack {
# # # #         private int maxSize;
# # # #         private int[] stackArray;
# # # #         private int top;

# # # #         public Stack(int size) {
# # # #             maxSize = size;
# # # #             stackArray = new int[maxSize];
# # # #             top = -1;
# # # #         }

# # # #         public void push(int value) {
# # # #             if (top == maxSize - 1) {
# # # #                 System.out.println("Stack overflow");
# # # #                 return;
# # # #             }
# # # #             stackArray[++top] = value;
# # # #         }

# # # #         public int pop() {
# # # #             if (top == -1) {
# # # #                 System.out.println("Stack underflow");
# # # #                 return -1;
# # # #             }
# # # #             return stackArray[top--];
# # # #         }

# # # #         public int peek() {
# # # #             if (top == -1) {
# # # #                 System.out.println("Stack is empty");
# # # #                 return -1;
# # # #             }
# # # #             return stackArray[top];
# # # #         }

# # # #         public boolean isEmpty() {
# # # #             return top == -1;
# # # #         }
# # # #     }
# # # # }
# # # # EOF

# # # # cat > stack_queue_queue_using_stacks_dsa.java <<EOF
# # # # // Stack and Queue: Implement a Queue using Stacks
# # # # import java.util.Stack;

# # # # public class stack_queue_queue_using_stacks_dsa {
# # # #     static class Queue {
# # # #         Stack<Integer> stack1 = new Stack<>();
# # # #         Stack<Integer> stack2 = new Stack<>();

# # # #         public void enqueue(int x) {
# # # #             stack1.push(x);
# # # #         }

# # # #         public int dequeue() {
# # # #             if (stack2.isEmpty()) {
# # # #                 while (!stack1.isEmpty()) {
# # # #                     stack2.push(stack1.pop());
# # # #                 }
# # # #             }
# # # #             if (stack2.isEmpty()) {
# # # #                 System.out.println("Queue is empty");
# # # #                 return -1;
# # # #             }
# # # #             return stack2.pop();
# # # #         }
# # # #     }
# # # # }
# # # # EOF

# # # # cat > stack_queue_balanced_parentheses_dsa.java <<EOF
# # # # // Stack and Queue: Check for Balanced Parentheses in an Expression
# # # # import java.util.Stack;

# # # # public class stack_queue_balanced_parentheses_dsa {
# # # #     public static boolean isBalanced(String expr) {
# # # #         Stack<Character> stack = new Stack<>();
# # # #         for (char ch : expr.toCharArray()) {
# # # #             if (ch == '(' || ch == '{' || ch == '[') {
# # # #                 stack.push(ch);
# # # #             } else if (ch == ')' && !stack.isEmpty() && stack.peek() == '(') {
# # # #                 stack.pop();
# # # #             } else if (ch == '}' && !stack.isEmpty() && stack.peek() == '{') {
# # # #                 stack.pop();
# # # #             } else if (ch == ']' && !stack.isEmpty() && stack.peek() == '[') {
# # # #                 stack.pop();
# # # #             } else if (ch == ')' || ch == '}' || ch == ']') {
# # # #                 return false;
# # # #             }
# # # #         }
# # # #         return stack.isEmpty();
# # # #     }
# # # # }
# # # # EOF

# # # # cat > stack_queue_postfix_evaluation_dsa.java <<EOF
# # # # // Stack and Queue: Evaluate a Postfix Expression
# # # # import java.util.Stack;

# # # # public class stack_queue_postfix_evaluation_dsa {
# # # #     public static int evaluatePostfix(String expr) {
# # # #         Stack<Integer> stack = new Stack<>();
# # # #         for (char ch : expr.toCharArray()) {
# # # #             if (Character.isDigit(ch)) {
# # # #                 stack.push(ch - '0');
# # # #             } else {
# # # #                 int val2 = stack.pop();
# # # #                 int val1 = stack.pop();
# # # #                 switch (ch) {
# # # #                     case '+': stack.push(val1 + val2); break;
# # # #                     case '-': stack.push(val1 - val2); break;
# # # #                     case '*': stack.push(val1 * val2); break;
# # # #                     case '/': stack.push(val1 / val2); break;
# # # #                 }
# # # #             }
# # # #         }
# # # #         return stack.pop();
# # # #     }
# # # # }
# # # # EOF

# # # # cat > stack_queue_generate_binary_numbers_dsa.java <<EOF
# # # # // Stack and Queue: Generate Binary Numbers from 1 to N using a Queue
# # # # import java.util.LinkedList;
# # # # import java.util.Queue;

# # # # public class stack_queue_generate_binary_numbers_dsa {
# # # #     public static void generateBinaryNumbers(int n) {
# # # #         Queue<String> queue = new LinkedList<>();
# # # #         queue.add("1");
# # # #         for (int i = 0; i < n; i++) {
# # # #             String s = queue.remove();
# # # #             System.out.println(s);
# # # #             queue.add(s + "0");
# # # #             queue.add(s + "1");
# # # #         }
# # # #     }
# # # # }
# # # # EOF

# # # # cat > stack_queue_circular_queue_dsa.java <<EOF
# # # # // Stack and Queue: Implement a Circular Queue
# # # # public class stack_queue_circular_queue_dsa {
# # # #     static class CircularQueue {
# # # #         private int size, front, rear;
# # # #         private int[] queue;

# # # #         public CircularQueue(int size) {
# # # #             this.size = size;
# # # #             queue = new int[size];
# # # #             front = rear = -1;
# # # #         }

# # # #         public void enqueue(int value) {
# # # #             if ((rear + 1) % size == front) {
# # # #                 System.out.println("Queue is full");
# # # #                 return;
# # # #             }
# # # #             if (front == -1) front = 0;
# # # #             rear = (rear + 1) % size;
# # # #             queue[rear] = value;
# # # #         }

# # # #         public int dequeue() {
# # # #             if (front == -1) {
# # # #                 System.out.println("Queue is empty");
# # # #                 return -1;
# # # #             }
# # # #             int data = queue[front];
# # # #             if (front == rear) {
# # # #                 front = rear = -1;
# # # #             } else {
# # # #                 front = (front + 1) % size;
# # # #             }
# # # #             return data;
# # # #         }
# # # #     }
# # # # }
# # # # EOF

# # # # cat > stack_queue_min_stack_dsa.java <<EOF
# # # # // Stack and Queue: Design a Stack that Supports Push, Pop, Top, and Retrieving the Minimum Element in Constant Time
# # # # import java.util.Stack;

# # # # public class stack_queue_min_stack_dsa {
# # # #     static class MinStack {
# # # #         Stack<Integer> stack = new Stack<>();
# # # #         Stack<Integer> minStack = new Stack<>();

# # # #         public void push(int x) {
# # # #             stack.push(x);
# # # #             if (minStack.isEmpty() || x <= minStack.peek()) {
# # # #                 minStack.push(x);
# # # #             }
# # # #         }

# # # #         public void pop() {
# # # #             if (stack.pop().equals(minStack.peek())) {
# # # #                 minStack.pop();
# # # #             }
# # # #         }

# # # #         public int top() {
# # # #             return stack.peek();
# # # #         }

# # # #         public int getMin() {
# # # #             return minStack.peek();
# # # #         }
# # # #     }
# # # # }
# # # # EOF

# # # # cat > stack_queue_priority_queue_dsa.java <<EOF
# # # # // Stack and Queue: Implement a Priority Queue
# # # # import java.util.PriorityQueue;

# # # # public class stack_queue_priority_queue_dsa {
# # # #     public static void main(String[] args) {
# # # #         PriorityQueue<Integer> pq = new PriorityQueue<>();
# # # #         pq.add(10);
# # # #         pq.add(5);
# # # #         pq.add(20);
# # # #         while (!pq.isEmpty()) {
# # # #             System.out.println(pq.poll());
# # # #         }
# # # #     }
# # # # }
# # # # EOF

# # # # cat > stack_queue_sort_stack_dsa.java <<EOF
# # # # // Stack and Queue: Sort a Stack
# # # # import java.util.Stack;

# # # # public class stack_queue_sort_stack_dsa {
# # # #     public static void sortStack(Stack<Integer> input) {
# # # #         Stack<Integer> tempStack = new Stack<>();
# # # #         while (!input.isEmpty()) {
# # # #             int temp = input.pop();
# # # #             while (!tempStack.isEmpty() && tempStack.peek() > temp) {
# # # #                 input.push(tempStack.pop());
# # # #             }
# # # #             tempStack.push(temp);
# # # #         }
# # # #         // Transfer back to input stack if needed
# # # #         while (!tempStack.isEmpty()) {
# # # #             input.push(tempStack.pop());
# # # #         }
# # # #     }

# # # #     public static void main(String[] args) {
# # # #         Stack<Integer> stack = new Stack<>();
# # # #         stack.push(34);
# # # #         stack.push(3);
# # # #         stack.push(31);
# # # #         stack.push(98);
# # # #         stack.push(92);
# # # #         stack.push(23);

# # # #         System.out.println("Original Stack: " + stack);
# # # #         sortStack(stack);
# # # #         System.out.println("Sorted Stack: " + stack);
# # # #     }
# # # # }
# # # # EOF

# # # # cat > stack_queue_queue_using_two_stacks_dsa.java <<EOF
# # # # // Stack and Queue: Implement a Queue using Two Stacks
# # # # import java.util.Stack;

# # # # public class stack_queue_queue_using_two_stacks_dsa {
# # # #     static class Queue {
# # # #         Stack<Integer> stack1 = new Stack<>();
# # # #         Stack<Integer> stack2 = new Stack<>();

# # # #         public void enqueue(int x) {
# # # #             stack1.push(x);
# # # #         }

# # # #         public int dequeue() {
# # # #             if (stack2.isEmpty()) {
# # # #                 while (!stack1.isEmpty()) {
# # # #                     stack2.push(stack1.pop());
# # # #                 }
# # # #             }
# # # #             if (stack2.isEmpty()) {
# # # #                 System.out.println("Queue is empty");
# # # #                 return -1;
# # # #             }
# # # #             return stack2.pop();
# # # #         }

# # # #         public boolean isEmpty() {
# # # #             return stack1.isEmpty() && stack2.isEmpty();
# # # #         }
# # # #     }

# # # #     public static void main(String[] args) {
# # # #         Queue q = new Queue();
# # # #         q.enqueue(10);
# # # #         q.enqueue(20);
# # # #         q.enqueue(30);
# # # #         System.out.println(q.dequeue()); // 10
# # # #         System.out.println(q.dequeue()); // 20
# # # #         q.enqueue(40);
# # # #         System.out.println(q.dequeue()); // 30
# # # #         System.out.println(q.dequeue()); // 40
# # # #     }
# # # # }
# # # # EOF


# # # cat > binary_tree_traversals_dsa.java <<EOF
# # # // Binary Tree: Implement a binary tree and perform inorder, preorder, and postorder traversals
# # # class Node {
# # #     int data;
# # #     Node left, right;
# # #     Node(int item) {
# # #         data = item;
# # #         left = right = null;
# # #     }
# # # }

# # # public class binary_tree_traversals_dsa {
# # #     Node root;

# # #     void inorder(Node node) {
# # #         if (node == null)
# # #             return;
# # #         inorder(node.left);
# # #         System.out.print(node.data + " ");
# # #         inorder(node.right);
# # #     }

# # #     void preorder(Node node) {
# # #         if (node == null)
# # #             return;
# # #         System.out.print(node.data + " ");
# # #         preorder(node.left);
# # #         preorder(node.right);
# # #     }

# # #     void postorder(Node node) {
# # #         if (node == null)
# # #             return;
# # #         postorder(node.left);
# # #         postorder(node.right);
# # #         System.out.print(node.data + " ");
# # #     }

# # #     public static void main(String[] args) {
# # #         binary_tree_traversals_dsa tree = new binary_tree_traversals_dsa();
# # #         tree.root = new Node(1);
# # #         tree.root.left = new Node(2);
# # #         tree.root.right = new Node(3);
# # #         tree.root.left.left = new Node(4);
# # #         tree.root.left.right = new Node(5);

# # #         System.out.print("Inorder traversal: ");
# # #         tree.inorder(tree.root);
# # #         System.out.println();

# # #         System.out.print("Preorder traversal: ");
# # #         tree.preorder(tree.root);
# # #         System.out.println();

# # #         System.out.print("Postorder traversal: ");
# # #         tree.postorder(tree.root);
# # #         System.out.println();
# # #     }
# # # }
# # # EOF

# # # cat > binary_tree_balanced_check_dsa.java <<EOF
# # # // Binary Tree: Check if a binary tree is balanced
# # # class Node {
# # #     int data;
# # #     Node left, right;
# # #     Node(int item) {
# # #         data = item;
# # #         left = right = null;
# # #     }
# # # }

# # # public class binary_tree_balanced_check_dsa {
# # #     Node root;

# # #     boolean isBalanced(Node node) {
# # #         return checkHeight(node) != -1;
# # #     }

# # #     int checkHeight(Node node) {
# # #         if (node == null)
# # #             return 0;
# # #         int leftHeight = checkHeight(node.left);
# # #         if (leftHeight == -1)
# # #             return -1;
# # #         int rightHeight = checkHeight(node.right);
# # #         if (rightHeight == -1)
# # #             return -1;
# # #         if (Math.abs(leftHeight - rightHeight) > 1)
# # #             return -1;
# # #         return Math.max(leftHeight, rightHeight) + 1;
# # #     }

# # #     public static void main(String[] args) {
# # #         binary_tree_balanced_check_dsa tree = new binary_tree_balanced_check_dsa();
# # #         tree.root = new Node(1);
# # #         tree.root.left = new Node(2);
# # #         tree.root.left.left = new Node(3);

# # #         System.out.println("Is tree balanced? " + tree.isBalanced(tree.root));
# # #     }
# # # }
# # # EOF

# # # cat > binary_tree_height_dsa.java <<EOF
# # # // Binary Tree: Find the height of a binary tree
# # # class Node {
# # #     int data;
# # #     Node left, right;
# # #     Node(int item) {
# # #         data = item;
# # #         left = right = null;
# # #     }
# # # }

# # # public class binary_tree_height_dsa {
# # #     Node root;

# # #     int height(Node node) {
# # #         if (node == null)
# # #             return 0;
# # #         int leftHeight = height(node.left);
# # #         int rightHeight = height(node.right);
# # #         return Math.max(leftHeight, rightHeight) + 1;
# # #     }

# # #     public static void main(String[] args) {
# # #         binary_tree_height_dsa tree = new binary_tree_height_dsa();
# # #         tree.root = new Node(1);
# # #         tree.root.left = new Node(2);
# # #         tree.root.right = new Node(3);
# # #         tree.root.left.left = new Node(4);

# # #         System.out.println("Height of tree: " + tree.height(tree.root));
# # #     }
# # # }
# # # EOF

# # # cat > binary_tree_to_dll_dsa.java <<EOF
# # # // Binary Tree: Convert a binary tree to a doubly linked list
# # # class Node {
# # #     int data;
# # #     Node left, right;
# # #     Node(int item) {
# # #         data = item;
# # #         left = right = null;
# # #     }
# # # }

# # # public class binary_tree_to_dll_dsa {
# # #     Node root;
# # #     Node head;
# # #     Node prev = null;

# # #     void bToDLL(Node root) {
# # #         if (root == null)
# # #             return;
# # #         bToDLL(root.left);
# # #         if (prev == null)
# # #             head = root;
# # #         else {
# # #             root.left = prev;
# # #             prev.right = root;
# # #         }
# # #         prev = root;
# # #         bToDLL(root.right);
# # #     }

# # #     void printList(Node node) {
# # #         while (node != null) {
# # #             System.out.print(node.data + " ");
# # #             node = node.right;
# # #         }
# # #     }

# # #     public static void main(String[] args) {
# # #         binary_tree_to_dll_dsa tree = new binary_tree_to_dll_dsa();
# # #         tree.root = new Node(10);
# # #         tree.root.left = new Node(12);
# # #         tree.root.right = new Node(15);
# # #         tree.root.left.left = new Node(25);
# # #         tree.root.left.right = new Node(30);
# # #         tree.root.right.left = new Node(36);

# # #         tree.bToDLL(tree.root);
# # #         tree.printList(tree.head);
# # #     }
# # # }
# # # EOF

# # # cat > binary_tree_lca_dsa.java <<EOF
# # # // Binary Tree: Find the lowest common ancestor of two nodes in a binary tree
# # # class Node {
# # #     int data;
# # #     Node left, right;
# # #     Node(int item) {
# # #         data = item;
# # #         left = right = null;
# # #     }
# # # }

# # # public class binary_tree_lca_dsa {
# # #     Node root;

# # #     Node findLCA(Node node, int n1, int n2) {
# # #         if (node == null)
# # #             return null;
# # #         if (node.data == n1 || node.data == n2)
# # #             return node;
# # #         Node leftLCA = findLCA(node.left, n1, n2);
# # #         Node rightLCA = findLCA(node.right, n1, n2);
# # #         if (leftLCA != null && rightLCA != null)
# # #             return node;
# # #         return (leftLCA != null) ? leftLCA : rightLCA;
# # #     }

# # #     public static void main(String[] args) {
# # #         binary_tree_lca_dsa tree = new binary_tree_lca_dsa();
# # #         tree.root = new Node(3);
# # #         tree.root.left = new Node(5);
# # #         tree.root.right = new Node(1);
# # #         tree.root.left.left = new Node(6);
# # #         tree.root.left.right = new Node(2);
# # #         tree.root.right.left = new Node(0);
# # #         tree.root.right.right = new Node(8);

# # #         Node lca = tree.findLCA(tree.root, 6, 2);
# # #         System.out.println("LCA of 6 and 2 is: " + lca.data);
# # #     }
# # # }
# # # EOF

# # # cat > binary_tree_check_bst_dsa.java <<EOF
# # # // Binary Tree: Check if a binary tree is a binary search tree (BST)
# # # class Node {
# # #     int data;
# # #     Node left, right;
# # #     Node(int item) {
# # #         data = item;
# # #         left = right = null;
# # #     }
# # # }

# # # public class binary_tree_check_bst_dsa {
# # #     Node root;

# # #     boolean isBST(Node node, Integer min, Integer max) {
# # #         if (node == null)
# # #             return true;
# # #         if ((min != null && node.data <= min) || (max != null && node.data >= max))
# # #             return false;
# # #         return isBST(node.left, min, node.data) && isBST(node.right, node.data, max);
# # #     }

# # #     public static void main(String[] args) {
# # #         binary_tree_check_bst_dsa tree = new binary_tree_check_bst_dsa();
# # #         tree.root = new Node(10);
# # #         tree.root.left = new Node(5);
# # #         tree.root.right = new Node(15);
# # #         tree.root.left.left = new Node(2);
# # #         tree.root.left.right = new Node(7);
# # #         tree.root.right.right = new Node(20);

# # #         System.out.println("Is BST? " + tree.isBST(tree.root, null, null));
# # #     }
# # # }
# # # EOF

# # # cat > binary_tree_construct_from_traversals_dsa.java <<EOF
# # # // Binary Tree: Construct a binary tree from inorder and preorder traversals
# # # import java.util.*;

# # # class Node {
# # #     int data;
# # #     Node left, right;
# # #     Node(int item) {
# # #         data = item;
# # #         left = right = null;
# # #     }
# # # }

# # # public class binary_tree_construct_from_traversals_dsa {
# # #     static int preIndex = 0;

# # #     Node buildTree(int[] inorder, int[] preorder, int inStart, int inEnd, Map<Integer, Integer> inMap) {
# # #         if (inStart > inEnd)
# # #             return null;

# # #         int curr = preorder[preIndex++];
# # #         Node node = new Node(curr);

# # #         if (inStart == inEnd)
# # #             return node;

# # #         int inIndex = inMap.get(curr);

# # #         node.left = buildTree(inorder, preorder, inStart, inIndex - 1, inMap);
# # #         node.right = buildTree(inorder, preorder, inIndex + 1, inEnd, inMap);

# # #         return node;
# # #     }

# # #     void printInorder(Node node) {
# # #         if (node == null)
# # #             return;
# # #         printInorder(node.left);
# # #         System.out.print(node.data + " ");
# # #         printInorder(node.right);
# # #     }

# # #     public static void main(String[] args) {
# # #         binary_tree_construct_from_traversals_dsa tree = new binary_tree_construct_from_traversals_dsa();
# # #         int[] inorder = {4, 2, 5, 1, 6, 3};
# # #         int[] preorder = {1, 2, 4, 5, 3, 6};
# # #         Map<Integer, Integer> inMap = new HashMap<>();
# # #         for (int i = 0; i < inorder.length; i++)
# # #             inMap.put(inorder[i], i);

# # #         Node root = tree.buildTree(inorder, preorder, 0, inorder.length - 1, inMap);
# # #         System.out.print("Inorder of constructed tree: ");
# # #         tree.printInorder(root);
# # #     }
# # # }
# # # EOF

# # # cat > binary_tree_serialize_deserialize_dsa.java <<EOF
# # # // Binary Tree: Serialize and deserialize a binary tree
# # # import java.util.*;

# # # class Node {
# # #     int data;
# # #     Node left, right;
# # #     Node(int item) {
# # #         data = item;
# # #         left = right = null;
# # #     }
# # # }

# # # public class binary_tree_serialize_deserialize_dsa {
# # #     static final String NULL_SYMBOL = "#";
# # #     static final String DELIMITER = ",";

# # #     String serialize(Node root) {
# # #         StringBuilder sb = new StringBuilder();
# # #         serializeHelper(root, sb);
# # #         return sb.toString();
# # #     }

# # #     void serializeHelper(Node node, StringBuilder sb) {
# # #         if (node == null) {
# # #             sb.append(NULL_SYMBOL).append(DELIMITER);
# # #             return;
# # #         }
# # #         sb.append(node.data).append(DELIMITER);
# # #         serializeHelper(node.left, sb);
# # #         serializeHelper(node.right, sb);
# # #     }

# # #     Node deserialize(String data) {
# # #         Queue<String> nodes = new LinkedList<>(Arrays.asList(data.split(DELIMITER)));
# # #         return deserializeHelper(nodes);
# # #     }

# # #     Node deserializeHelper(Queue<String> nodes) {
# # #         String val = nodes.poll();
# # #         if (val.equals(NULL_SYMBOL))
# # #             return null;
# # #         Node node = new Node(Integer.parseInt(val));
# # #         node.left = deserializeHelper(nodes);
# # #         node.right = deserializeHelper(nodes);
# # #         return node;
# # #     }

# # #     void inorder(Node node) {
# # #         if (node == null)
# # #             return;
# # #         inorder(node.left);
# # #         System.out.print(node.data + " ");
# # #         inorder(node.right);
# # #     }

# # #     public static void main(String[] args) {
# # #         binary_tree_serialize_deserialize_dsa tree = new binary_tree_serialize_deserialize_dsa();
# # #         Node root = new Node(1);
# # #         root.left = new Node(2);
# # #         root.right = new Node(3);
# # #         root.right.left = new Node(4);
# # #         root.right.right = new Node(5);

# # #         String serialized = tree.serialize(root);
# # #         System.out.println("Serialized tree: " + serialized);

# # #         Node deserializedRoot = tree.deserialize(serialized);
# # #         System.out.print("Inorder of deserialized tree: ");
# # #         tree.inorder(deserializedRoot);
# # #     }
# # # }
# # # EOF

# # # cat > binary_tree_diameter_dsa.java <<EOF
# # # // Binary Tree: Find the diameter of a binary tree
# # # class Node {
# # #     int data;
# # #     Node left, right;
# # #     Node(int item) {
# # #         data = item;
# # #         left = right = null;
# # #     }
# # # }

# # # public class binary_tree_diameter_dsa {
# # #     Node root;
# # #     int diameter = 0;

# # #     int height(Node node) {
# # #         if (node == null)
# # #             return 0;
# # #         int leftHeight = height(node.left);
# # #         int rightHeight = height(node.right);
# # #         diameter = Math.max(diameter, leftHeight + rightHeight);
# # #         return Math.max(leftHeight, rightHeight) + 1;
# # #     }

# # #     int getDiameter(Node node) {
# # #         height(node);
# # #         return diameter;
# # #     }

# # #     public static void main(String[] args) {
# # #         binary_tree_diameter_dsa tree = new binary_tree_diameter_dsa();
# # #         tree.root = new Node(1);
# # #         tree.root.left = new Node(2);
# # #         tree.root.right = new Node(3);
# # #         tree.root.left.left = new Node(4);
# # #         tree.root.left.right = new Node(5);

# # #         System.out.println("Diameter of the tree: " + tree.getDiameter(tree.root));
# # #     }
# # # }
# # # EOF

# # # cat > binary_tree_bst_to_balanced_dsa.java <<EOF
# # # // Binary Tree: Convert a BST to a balanced binary tree
# # # import java.util.*;

# # # class Node {
# # #     int data;
# # #     Node left, right;
# # #     Node(int item) {
# # #         data = item;
# # #         left = right = null;
# # #     }
# # # }

# # # public class binary_tree_bst_to_balanced_dsa {
# # #     Node root;

# # #     // Function to store nodes of BST in sorted order
# # #     void storeInorder(Node node, List<Integer> nodes) {
# # #         if (node == null)
# # #             return;
# # #         storeInorder(node.left, nodes);
# # #         nodes.add(node.data);
# # #         storeInorder(node.right, nodes);
# # #     }

# # #     // Function to build balanced BST from sorted list
# # #     Node buildBalancedBST(List<Integer> nodes, int start, int end) {
# # #         if (start > end)
# # #             return null;
# # #         int mid = (start + end) / 2;
# # #         Node node = new Node(nodes.get(mid));
# # #         node.left = buildBalancedBST(nodes, start, mid - 1);
# # #         node.right = buildBalancedBST(nodes, mid + 1, end);
# # #         return node;
# # #     }

# # #     // Function to convert unbalanced BST to balanced BST
# # #     Node balanceBST(Node root) {
# # #         List<Integer> nodes = new ArrayList<>();
# # #         storeInorder(root, nodes);
# # #         return buildBalancedBST(nodes, 0, nodes.size() - 1);
# # #     }

# # #     // Function to print inorder traversal of the tree
# # #     void printInorder(Node node) {
# # #         if (node == null)
# # #             return;
# # #         printInorder(node.left);
# # #         System.out.print(node.data + " ");
# # #         printInorder(node.right);
# # #     }

# # #     public static void main(String[] args) {
# # #         binary_tree_bst_to_balanced_dsa tree = new binary_tree_bst_to_balanced_dsa();
# # #         /*
# # #         Constructing an unbalanced BST:
# # #                 10
# # #                /
# # #               8
# # #              /
# # #             7
# # #            /
# # #           6
# # #          /
# # #         5
# # #         */
# # #         tree.root = new Node(10);
# # #         tree.root.left = new Node(8);
# # #         tree.root.left.left = new Node(7);
# # #         tree.root.left.left.left = new Node(6);
# # #         tree.root.left.left.left.left = new Node(5);

# # #         System.out.println("Inorder traversal of original unbalanced BST:");
# # #         tree.printInorder(tree.root);
# # #         System.out.println();

# # #         tree.root = tree.balanceBST(tree.root);

# # #         System.out.println("Inorder traversal of balanced BST:");
# # #         tree.printInorder(tree.root);
# # #         System.out.println();
# # #     }
# # # }
# # # EOF



# # cat > graph_mst_kruskal_dsa.java <<EOF
# # // Graph: Find the minimum spanning tree using Kruskal's Algorithm
# # import java.util.*;

# # class Edge implements Comparable<Edge> {
# #     int src, dest, weight;
# #     Edge(int s, int d, int w) {
# #         src = s; dest = d; weight = w;
# #     }
# #     public int compareTo(Edge compareEdge) {
# #         return this.weight - compareEdge.weight;
# #     }
# # }

# # class Subset {
# #     int parent, rank;
# # }

# # public class graph_mst_kruskal_dsa {
# #     int V, E;
# #     Edge[] edges;

# #     graph_mst_kruskal_dsa(int v, int e) {
# #         V = v; E = e;
# #         edges = new Edge[E];
# #     }

# #     int find(Subset[] subsets, int i) {
# #         if (subsets[i].parent != i)
# #             subsets[i].parent = find(subsets, subsets[i].parent);
# #         return subsets[i].parent;
# #     }

# #     void union(Subset[] subsets, int x, int y) {
# #         int xroot = find(subsets, x);
# #         int yroot = find(subsets, y);
# #         if (subsets[xroot].rank < subsets[yroot].rank)
# #             subsets[xroot].parent = yroot;
# #         else if (subsets[xroot].rank > subsets[yroot].rank)
# #             subsets[yroot].parent = xroot;
# #         else {
# #             subsets[yroot].parent = xroot;
# #             subsets[xroot].rank++;
# #         }
# #     }

# #     void KruskalMST() {
# #         Edge[] result = new Edge[V];
# #         int e = 0;
# #         Arrays.sort(edges);
# #         Subset[] subsets = new Subset[V];
# #         for (int v = 0; v < V; ++v) {
# #             subsets[v] = new Subset();
# #             subsets[v].parent = v;
# #             subsets[v].rank = 0;
# #         }
# #         int i = 0;
# #         while (e < V - 1 && i < edges.length) {
# #             Edge next_edge = edges[i++];
# #             int x = find(subsets, next_edge.src);
# #             int y = find(subsets, next_edge.dest);
# #             if (x != y) {
# #                 result[e++] = next_edge;
# #                 union(subsets, x, y);
# #             }
# #         }
# #         System.out.println("Edges in the MST:");
# #         for (i = 0; i < e; ++i)
# #             System.out.println(result[i].src + " -- " + result[i].dest + " == " + result[i].weight);
# #     }

# #     public static void main(String[] args) {
# #         int V = 4;
# #         int E = 5;
# #         graph_mst_kruskal_dsa graph = new graph_mst_kruskal_dsa(V, E);
# #         graph.edges[0] = new Edge(0, 1, 10);
# #         graph.edges[1] = new Edge(0, 2, 6);
# #         graph.edges[2] = new Edge(0, 3, 5);
# #         graph.edges[3] = new Edge(1, 3, 15);
# #         graph.edges[4] = new Edge(2, 3, 4);
# #         graph.KruskalMST();
# #     }
# # }
# # EOF

# # cat > graph_check_bipartite_dsa.java <<EOF
# # // Graph: Check if a graph is bipartite
# # import java.util.*;

# # public class graph_check_bipartite_dsa {
# #     static boolean isBipartite(int[][] graph, int V) {
# #         int[] colors = new int[V];
# #         Arrays.fill(colors, -1);
# #         for (int i = 0; i < V; i++) {
# #             if (colors[i] == -1) {
# #                 if (!bfsCheck(graph, i, colors))
# #                     return false;
# #             }
# #         }
# #         return true;
# #     }

# #     static boolean bfsCheck(int[][] graph, int src, int[] colors) {
# #         Queue<Integer> queue = new LinkedList<>();
# #         queue.add(src);
# #         colors[src] = 0;
# #         while (!queue.isEmpty()) {
# #             int u = queue.poll();
# #             for (int v = 0; v < graph.length; v++) {
# #                 if (graph[u][v] == 1) {
# #                     if (colors[v] == -1) {
# #                         colors[v] = 1 - colors[u];
# #                         queue.add(v);
# #                     } else if (colors[v] == colors[u]) {
# #                         return false;
# #                     }
# #                 }
# #             }
# #         }
# #         return true;
# #     }

# #     public static void main(String[] args) {
# #         int[][] graph = {
# #             {0, 1, 0, 1},
# #             {1, 0, 1, 0},
# #             {0, 1, 0, 1},
# #             {1, 0, 1, 0}
# #         };
# #         int V = 4;
# #         System.out.println("Is the graph bipartite? " + isBipartite(graph, V));
# #     }
# # }
# # EOF


# # cat > graph_shortest_path_unweighted_dsa.java <<EOF
# # // Graph: Find the shortest path in an unweighted graph using BFS
# # import java.util.*;

# # public class graph_shortest_path_unweighted_dsa {
# #     private int V; // Number of vertices
# #     private List<List<Integer>> adj; // Adjacency list

# #     public graph_shortest_path_unweighted_dsa(int V) {
# #         this.V = V;
# #         adj = new ArrayList<>();
# #         for (int i = 0; i < V; i++)
# #             adj.add(new ArrayList<>());
# #     }

# #     // Function to add an edge into the graph
# #     public void addEdge(int u, int v) {
# #         adj.get(u).add(v);
# #         adj.get(v).add(u); // For undirected graph
# #     }

# #     // Function to find the shortest path between two nodes using BFS
# #     public List<Integer> shortestPath(int src, int dest) {
# #         boolean[] visited = new boolean[V];
# #         int[] parent = new int[V];
# #         Arrays.fill(parent, -1);
# #         Queue<Integer> queue = new LinkedList<>();
# #         visited[src] = true;
# #         queue.add(src);

# #         while (!queue.isEmpty()) {
# #             int u = queue.poll();
# #             if (u == dest)
# #                 break;
# #             for (int v : adj.get(u)) {
# #                 if (!visited[v]) {
# #                     visited[v] = true;
# #                     parent[v] = u;
# #                     queue.add(v);
# #                 }
# #             }
# #         }

# #         // Reconstruct the path from source to destination
# #         List<Integer> path = new ArrayList<>();
# #         for (int v = dest; v != -1; v = parent[v])
# #             path.add(v);
# #         Collections.reverse(path);

# #         // If the source is not reachable to destination
# #         if (path.get(0) != src)
# #             return new ArrayList<>(); // Return empty list

# #         return path;
# #     }

# #     public static void main(String[] args) {
# #         graph_shortest_path_unweighted_dsa g = new graph_shortest_path_unweighted_dsa(6);
# #         g.addEdge(0, 1);
# #         g.addEdge(0, 2);
# #         g.addEdge(1, 3);
# #         g.addEdge(2, 3);
# #         g.addEdge(3, 4);
# #         g.addEdge(4, 5);

# #         int source = 0, destination = 5;
# #         List<Integer> path = g.shortestPath(source, destination);

# #         if (path.isEmpty()) {
# #             System.out.println("No path exists between " + source + " and " + destination);
# #         } else {
# #             System.out.println("Shortest path from " + source + " to " + destination + ":");
# #             for (int node : path) {
# #                 System.out.print(node + " ");
# #             }
# #             System.out.println();
# #         }
# #     }
# # }
# # EOF

# # cat > graph_detect_cycle_dsa.java <<EOF
# # // Graph: Detect a cycle in a directed and undirected graph
# # import java.util.*;

# # public class graph_detect_cycle_dsa {
# #     private int V;
# #     private List<List<Integer>> adj;

# #     public graph_detect_cycle_dsa(int V) {
# #         this.V = V;
# #         adj = new ArrayList<>();
# #         for (int i = 0; i < V; i++)
# #             adj.add(new ArrayList<>());
# #     }

# #     // Function to add an edge into the graph
# #     public void addEdge(int u, int v) {
# #         adj.get(u).add(v);
# #         adj.get(v).add(u); // For undirected graph
# #     }

# #     // Function to detect cycle in an undirected graph using DFS
# #     private boolean isCyclicUtil(int v, boolean[] visited, int parent) {
# #         visited[v] = true;
# #         for (int i : adj.get(v)) {
# #             if (!visited[i]) {
# #                 if (isCyclicUtil(i, visited, v))
# #                     return true;
# #             } else if (i != parent)
# #                 return true;
# #         }
# #         return false;
# #     }

# #     public boolean isCyclicUndirected() {
# #         boolean[] visited = new boolean[V];
# #         for (int u = 0; u < V; u++)
# #             if (!visited[u])
# #                 if (isCyclicUtil(u, visited, -1))
# #                     return true;
# #         return false;
# #     }

# #     // Function to detect cycle in a directed graph using DFS
# #     private boolean isCyclicDirectedUtil(int v, boolean[] visited, boolean[] recStack) {
# #         if (recStack[v])
# #             return true;
# #         if (visited[v])
# #             return false;
# #         visited[v] = true;
# #         recStack[v] = true;
# #         for (int neighbor : adj.get(v))
# #             if (isCyclicDirectedUtil(neighbor, visited, recStack))
# #                 return true;
# #         recStack[v] = false;
# #         return false;
# #     }

# #     public boolean isCyclicDirected() {
# #         boolean[] visited = new boolean[V];
# #         boolean[] recStack = new boolean[V];
# #         for (int i = 0; i < V; i++)
# #             if (isCyclicDirectedUtil(i, visited, recStack))
# #                 return true;
# #         return false;
# #     }

# #     public static void main(String[] args) {
# #         // Undirected graph example
# #         graph_detect_cycle_dsa g1 = new graph_detect_cycle_dsa(5);
# #         g1.addEdge(0, 1);
# #         g1.addEdge(1, 2);
# #         g1.addEdge(2, 3);
# #         g1.addEdge(3, 4);
# #         g1.addEdge(4, 1); // Adding a cycle
# #         System.out.println("Undirected graph contains cycle: " + g1.isCyclicUndirected());

# #         // Directed graph example
# #         graph_detect_cycle_dsa g2 = new graph_detect_cycle_dsa(4);
# #         g2.adj.get(0).add(1);
# #         g2.adj.get(1).add(2);
# #         g2.adj.get(2).add(3);
# #         g2.adj.get(3).add(1); // Adding a cycle
# #         System.out.println("Directed graph contains cycle: " + g2.isCyclicDirected());
# #     }
# # }
# # EOF


# # cat > graph_dijkstra_shortest_path_dsa.java <<EOF
# # // Graph: Find the shortest path between two nodes in a weighted graph using Dijkstra's Algorithm
# # import java.util.*;

# # public class graph_dijkstra_shortest_path_dsa {
# #     private int V;
# #     private List<List<Node>> adj;

# #     static class Node implements Comparable<Node> {
# #         int vertex, weight;
# #         Node(int v, int w) {
# #             vertex = v;
# #             weight = w;
# #         }
# #         public int compareTo(Node other) {
# #             return this.weight - other.weight;
# #         }
# #     }

# #     public graph_dijkstra_shortest_path_dsa(int V) {
# #         this.V = V;
# #         adj = new ArrayList<>();
# #         for (int i = 0; i < V; i++)
# #             adj.add(new ArrayList<>());
# #     }

# #     public void addEdge(int u, int v, int w) {
# #         adj.get(u).add(new Node(v, w));
# #         adj.get(v).add(new Node(u, w)); // For undirected graph
# #     }

# #     public void dijkstra(int src) {
# #         int[] dist = new int[V];
# #         Arrays.fill(dist, Integer.MAX_VALUE);
# #         dist[src] = 0;

# #         PriorityQueue<Node> pq = new PriorityQueue<>();
# #         pq.add(new Node(src, 0));

# #         while (!pq.isEmpty()) {
# #             Node current = pq.poll();
# #             int u = current.vertex;

# #             for (Node neighbor : adj.get(u)) {
# #                 int v = neighbor.vertex;
# #                 int weight = neighbor.weight;

# #                 if (dist[u] + weight < dist[v]) {
# #                     dist[v] = dist[u] + weight;
# #                     pq.add(new Node(v, dist[v]));
# #                 }
# #             }
# #         }

# #         // Print the shortest distances
# #         System.out.println("Vertex\tDistance from Source");
# #         for (int i = 0; i < V; i++)
# #             System.out.println(i + "\t\t" + dist[i]);
# #     }

# #     public static void main(String[] args) {
# #         graph_dijkstra_shortest_path_dsa g = new graph_dijkstra_shortest_path_dsa(5);
# #         g.addEdge(0, 1, 10);
# #         g.addEdge(0, 4, 5);
# #         g.addEdge(1, 2, 1);
# #         g.addEdge(1, 4, 2);
# #         g.addEdge(2, 3, 4);
# #         g.addEdge(3, 0, 7);
# #         g.addEdge(3, 2, 6);
# #         g.addEdge(4, 1, 3);
# #         g.addEdge(4, 2, 9);
# #         g.addEdge(4, 3, 2);

# #         g.dijkstra(0);
# #     }
# # }
# # EOF


# # cat > graph_mst_kruskal_dsa.java <<EOF
# # // Graph: Find the Minimum Spanning Tree using Kruskal's Algorithm
# # import java.util.*;

# # class Edge implements Comparable<Edge> {
# #     int src, dest, weight;
# #     Edge(int s, int d, int w) {
# #         src = s; dest = d; weight = w;
# #     }
# #     public int compareTo(Edge other) {
# #         return this.weight - other.weight;
# #     }
# # }

# # public class graph_mst_kruskal_dsa {
# #     int V;
# #     List<Edge> edges = new ArrayList<>();

# #     public graph_mst_kruskal_dsa(int V) {
# #         this.V = V;
# #     }

# #     public void addEdge(int u, int v, int w) {
# #         edges.add(new Edge(u, v, w));
# #     }

# #     int find(int[] parent, int i) {
# #         if (parent[i] != i)
# #             parent[i] = find(parent, parent[i]);
# #         return parent[i];
# #     }

# #     void union(int[] parent, int[] rank, int x, int y) {
# #         int xroot = find(parent, x);
# #         int yroot = find(parent, y);
# #         if (rank[xroot] < rank[yroot])
# #             parent[xroot] = yroot;
# #         else if (rank[xroot] > rank[yroot])
# #             parent[yroot] = xroot;
# #         else {
# #             parent[yroot] = xroot;
# #             rank[xroot]++;
# #         }
# #     }

# #     public void kruskalMST() {
# #         Collections.sort(edges);
# #         int[] parent = new int[V];
# #         int[] rank = new int[V];
# #         for (int i = 0; i < V; ++i)
# #             parent[i] = i;

# #         List<Edge> result = new ArrayList<>();
# #         for (Edge edge : edges) {
# #             int x = find(parent, edge.src);
# #             int y = find(parent, edge.dest);
# #             if (x != y) {
# #                 result.add(edge);
# #                 union(parent, rank, x, y);
# #             }
# #         }

# #         System.out.println("Edges in the Minimum Spanning Tree:");
# #         for (Edge e : result)
# #             System.out.println(e.src + " - " + e.dest + ": " + e.weight);
# #     }

# #     public static void main(String[] args) {
# #         graph_mst_kruskal_dsa g = new graph_mst_kruskal_dsa(4);
# #         g.addEdge(0, 1, 10);
# #         g.addEdge(0, 2, 6);
# #         g.addEdge(0, 3, 5);
# #         g.addEdge(1, 3, 15);
# #         g.addEdge(2, 3, 4);
# #         g.kruskalMST();
# #     }
# # }
# # EOF

# # cat > graph_bipartite_check_dsa.java <<EOF
# # // Graph: Check if a Graph is Bipartite using BFS
# # import java.util.*;

# # public class graph_bipartite_check_dsa {
# #     private int V;
# #     private List<List<Integer>> adj;

# #     public graph_bipartite_check_dsa(int V) {
# #         this.V = V;
# #         adj = new ArrayList<>();
# #         for (int i = 0; i < V; i++)
# #             adj.add(new ArrayList<>());
# #     }

# #     public void addEdge(int u, int v) {
# #         adj.get(u).add(v);
# #         adj.get(v).add(u); // For undirected graph
# #     }

# #     public boolean isBipartite() {
# #         int[] colors = new int[V];
# #         Arrays.fill(colors, -1);
# #         for (int i = 0; i < V; i++) {
# #             if (colors[i] == -1) {
# #                 if (!bfsCheck(i, colors))
# #                     return false;
# #             }
# #         }
# #         return true;
# #     }

# #     private boolean bfsCheck(int src, int[] colors) {
# #         Queue<Integer> queue = new LinkedList<>();
# #         queue.add(src);
# #         colors[src] = 0;
# #         while (!queue.isEmpty()) {
# #             int u = queue.poll();
# #             for (int v : adj.get(u)) {
# #                 if (colors[v] == -1) {
# #                     colors[v] = 1 - colors[u];
# #                     queue.add(v);
# #                 } else if (colors[v] == colors[u]) {
# #                     return false;
# #                 }
# #             }
# #         }
# #         return true;
# #     }

# #     public static void main(String[] args) {
# #         graph_bipartite_check_dsa g = new graph_bipartite_check_dsa(4);
# #         g.addEdge(0, 1);
# #         g.addEdge(1, 2);
# #         g.addEdge(2, 3);
# #         g.addEdge(3, 0);
# #         System.out.println("Graph is bipartite: " + g.isBipartite());
# #     }
# # }
# # EOF


# # cat > graph_strongly_connected_components_dsa.java <<EOF
# # // Graph: Find Strongly Connected Components using Kosaraju's Algorithm
# # import java.util.*;

# # public class graph_strongly_connected_components_dsa {
# #     private int V;
# #     private List<List<Integer>> adj;

# #     public graph_strongly_connected_components_dsa(int V) {
# #         this.V = V;
# #         adj = new ArrayList<>();
# #         for (int i = 0; i < V; i++)
# #             adj.add(new ArrayList<>());
# #     }

# #     public void addEdge(int u, int v) {
# #         adj.get(u).add(v);
# #     }

# #     private void DFSUtil(int v, boolean[] visited, List<Integer> component) {
# #         visited[v] = true;
# #         component.add(v);
# #         for (int n : adj.get(v))
# #             if (!visited[n])
# #                 DFSUtil(n, visited, component);
# #     }

# #     private graph_strongly_connected_components_dsa getTranspose() {
# #         graph_strongly_connected_components_dsa g = new graph_strongly_connected_components_dsa(V);
# #         for (int v = 0; v < V; v++)
# #             for (int n : adj.get(v))
# #                 g.adj.get(n).add(v);
# #         return g;
# #     }

# #     private void fillOrder(int v, boolean[] visited, Stack<Integer> stack) {
# #         visited[v] = true;
# #         for (int n : adj.get(v))
# #             if (!visited[n])
# #                 fillOrder(n, visited, stack);
# #         stack.push(v);
# #     }

# #     public void printSCCs() {
# #         Stack<Integer> stack = new Stack<>();
# #         boolean[] visited = new boolean[V];
# #         for (int i = 0; i < V; i++)
# #             if (!visited[i])
# #                 fillOrder(i, visited, stack);

# #         graph_strongly_connected_components_dsa gr = getTranspose();
# #         Arrays.fill(visited, false);

# #         System.out.println("Strongly Connected Components:");
# #         while (!stack.isEmpty()) {
# #             int v = stack.pop();
# #             if (!visited[v]) {
# #                 List<Integer> component = new ArrayList<>();
# #                 gr.DFSUtil(v, visited, component);
# #                 System.out.println(component);
# #             }
# #         }
# #     }

# #     public static void main(String[] args) {
# #         graph_strongly_connected_components_dsa g = new graph_strongly_connected_components_dsa(5);
# #         g.addEdge(1, 0);
# #         g.addEdge(0, 2);
# #         g.addEdge(2, 1);
# #         g.addEdge(0, 3);
# #         g.addEdge(3, 4);

# #         g.printSCCs();
# #     }
# # }
# # EOF
# # cat > graph_topological_sort_dsa.java <<EOF
# # // Graph: Topological Sort of a Directed Acyclic Graph (DAG)
# # import java.util.*;

# # public class graph_topological_sort_dsa {
# #     private int V;
# #     private List<List<Integer>> adj;

# #     public graph_topological_sort_dsa(int V) {
# #         this.V = V;
# #         adj = new ArrayList<>();
# #         for (int i = 0; i < V; i++)
# #             adj.add(new ArrayList<>());
# #     }

# #     public void addEdge(int u, int v) {
# #         adj.get(u).add(v);
# #     }

# #     private void topologicalSortUtil(int v, boolean[] visited, Stack<Integer> stack) {
# #         visited[v] = true;
# #         for (int neighbor : adj.get(v))
# #             if (!visited[neighbor])
# #                 topologicalSortUtil(neighbor, visited, stack);
# #         stack.push(v);
# #     }

# #     public void topologicalSort() {
# #         Stack<Integer> stack = new Stack<>();
# #         boolean[] visited = new boolean[V];
# #         for (int i = 0; i < V; i++)
# #             if (!visited[i])
# #                 topologicalSortUtil(i, visited, stack);
# #         while (!stack.isEmpty())
# #             System.out.print(stack.pop() + " ");
# #     }

# #     public static void main(String[] args) {
# #         graph_topological_sort_dsa g = new graph_topological_sort_dsa(6);
# #         g.addEdge(5, 2);
# #         g.addEdge(5, 0);
# #         g.addEdge(4, 0);
# #         g.addEdge(4, 1);
# #         g.addEdge(2, 3);
# #         g.addEdge(3, 1);

# #         System.out.println("Topological Sort of the given DAG:");
# #         g.topologicalSort();
# #     }
# # }
# # EOF


# # cat > graph_connected_components_dsa.java <<EOF
# # // Graph: Find the Number of Connected Components in an Undirected Graph
# # import java.util.*;

# # public class graph_connected_components_dsa {
# #     private int V;
# #     private List<List<Integer>> adj;

# #     public graph_connected_components_dsa(int V) {
# #         this.V = V;
# #         adj = new ArrayList<>();
# #         for (int i = 0; i < V; i++)
# #             adj.add(new ArrayList<>());
# #     }

# #     public void addEdge(int u, int v) {
# #         adj.get(u).add(v);
# #         adj.get(v).add(u); // For undirected graph
# #     }

# #     private void DFSUtil(int v, boolean[] visited) {
# #         visited[v] = true;
# #         for (int neighbor : adj.get(v))
# #             if (!visited[neighbor])
# #                 DFSUtil(neighbor, visited);
# #     }

# #     public int countConnectedComponents() {
# #         boolean[] visited = new boolean[V];
# #         int count = 0;
# #         for (int i = 0; i < V; i++) {
# #             if (!visited[i]) {
# #                 DFSUtil(i, visited);
# #                 count++;
# #             }
# #         }
# #         return count;
# #     }

# #     public static void main(String[] args) {
# #         graph_connected_components_dsa g = new graph_connected_components_dsa(5);
# #         g.addEdge(0, 1);
# #         g.addEdge(1, 2);
# #         g.addEdge(3, 4);

# #         System.out.println("Number of connected components: " + g.countConnectedComponents());
# #     }
# # }
# # EOF

# cat > dp_fibonacci_dsa.java <<EOF
# // 1. DP: Find the nth Fibonacci Number
# public class dp_fibonacci_dsa {
#     public static int fibonacci(int n) {
#         if (n <= 1) return n;
#         int[] dp = new int[n + 1];
#         dp[0] = 0;
#         dp[1] = 1;
#         for (int i = 2; i <= n; i++) {
#             dp[i] = dp[i - 1] + dp[i - 2];
#         }
#         return dp[n];
#     }

#     public static void main(String[] args) {
#         int n = 10; // Example: Find the 10th Fibonacci number
#         System.out.println("Fibonacci number at position " + n + " is: " + fibonacci(n));
#     }
# }
# EOF

# cat > dp_knapsack_dsa.java <<EOF
# // 2. DP: Solve the 0/1 Knapsack Problem
# public class dp_knapsack_dsa {
#     public static int knapsack(int[] weights, int[] values, int W) {
#         int n = weights.length;
#         int[][] dp = new int[n + 1][W + 1];
#         for (int i = 1; i <= n; i++) {
#             for (int w = 1; w <= W; w++) {
#                 if (weights[i - 1] <= w) {
#                     dp[i][w] = Math.max(dp[i - 1][w], values[i - 1] + dp[i - 1][w - weights[i - 1]]);
#                 } else {
#                     dp[i][w] = dp[i - 1][w];
#                 }
#             }
#         }
#         return dp[n][W];
#     }

#     public static void main(String[] args) {
#         int[] weights = {1, 2, 3};
#         int[] values = {60, 100, 120};
#         int W = 5;
#         System.out.println("Maximum value in knapsack: " + knapsack(weights, values, W));
#     }
# }
# EOF

# cat > dp_lcs_dsa.java <<EOF
# // 3. DP: Find the Longest Common Subsequence (LCS) of Two Strings
# public class dp_lcs_dsa {
#     public static int lcs(String s1, String s2) {
#         int m = s1.length();
#         int n = s2.length();
#         int[][] dp = new int[m + 1][n + 1];
#         for (int i = 1; i <= m; i++) {
#             for (int j = 1; j <= n; j++) {
#                 if (s1.charAt(i - 1) == s2.charAt(j - 1)) {
#                     dp[i][j] = dp[i - 1][j - 1] + 1;
#                 } else {
#                     dp[i][j] = Math.max(dp[i - 1][j], dp[i][j - 1]);
#                 }
#             }
#         }
#         return dp[m][n];
#     }

#     public static void main(String[] args) {
#         String s1 = "AGGTAB";
#         String s2 = "GXTXAYB";
#         System.out.println("Length of LCS is: " + lcs(s1, s2));
#     }
# }
# EOF

# cat > dp_minCoins_dsa.java <<EOF
# // 4. DP: Find the Minimum Number of Coins Required to Make a Given Amount
# public class dp_minCoins_dsa {
#     public static int minCoins(int[] coins, int amount) {
#         int[] dp = new int[amount + 1];
#         dp[0] = 0;
#         for (int i = 1; i <= amount; i++) {
#             dp[i] = Integer.MAX_VALUE;
#             for (int coin : coins) {
#                 if (i - coin >= 0 && dp[i - coin] != Integer.MAX_VALUE) {
#                     dp[i] = Math.min(dp[i], dp[i - coin] + 1);
#                 }
#             }
#         }
#         return dp[amount] == Integer.MAX_VALUE ? -1 : dp[amount];
#     }

#     public static void main(String[] args) {
#         int[] coins = {1, 2, 5};
#         int amount = 11;
#         System.out.println("Minimum coins required: " + minCoins(coins, amount));
#     }
# }
# EOF

# cat > dp_stairs_dsa.java <<EOF
# // 5. DP: Find the Number of Ways to Reach the nth Stair When Taking 1 or 2 Steps at a Time
# public class dp_stairs_dsa {
#     public static int countWays(int n) {
#         int[] dp = new int[n + 1];
#         dp[0] = 1;
#         dp[1] = 1;
#         for (int i = 2; i <= n; i++) {
#             dp[i] = dp[i - 1] + dp[i - 2];
#         }
#         return dp[n];
#     }

#     public static void main(String[] args) {
#         int n = 5; // Example: Find the number of ways to reach the 5th stair
#         System.out.println("Number of ways to reach the " + n + "th stair: " + countWays(n));
#     }
# }
# EOF

# cat > dp_editDistance_dsa.java <<EOF
# // 6. DP: Find the Minimum Number of Operations Required to Convert One String to Another (Edit Distance)
# public class dp_editDistance_dsa {
#     public static int editDistance(String s1, String s2) {
#         int m = s1.length();
#         int n = s2.length();
#         int[][] dp = new int[m + 1][n + 1];
#         for (int i = 0; i <= m; i++) {
#             for (int j = 0; j <= n; j++) {
#                 if (i == 0) {
#                     dp[i][j] = j;
#                 } else if (j == 0) {
#                     dp[i][j] = i;
#                 } else if (s1.charAt(i - 1) == s2.charAt(j - 1)) {
#                     dp[i][j] = dp[i - 1][j - 1];
#                 } else {
#                     dp[i][j] = 1 + Math.min(dp[i - 1][j], Math.min(dp[i][j - 1], dp[i - 1][j - 1]));
#                 }
#             }
#         }
#         return dp[m][n];
#     }

#     public static void main(String[] args) {
#         String s1 = "kitten";
#         String s2 = "sitting";
#         System.out.println("Edit Distance: " + editDistance(s1, s2));
#     }
# }
# EOF

# cat > dp_maxSumIncSubseq_dsa.java <<EOF
# // 7. DP: Find the Maximum Sum Increasing Subsequence
# public class dp_maxSumIncSubseq_dsa {
#     public static int maxSumIS(int[] arr) {
#         int n = arr.length;
#         int[] dp = new int[n];
#         dp[0] = arr[0];
#         for (int i = 1; i < n; i++) {
#             dp[i] = arr[i];
#             for (int j = 0; j < i; j++) {
#                 if (arr[i] > arr[j] && dp[i] < dp[j] + arr[i]) {
#                     dp[i] = dp[j] + arr[i];
#                 }
#             }
#         }
#         int max = dp[0];
#         for (int i = 1; i < n; i++) {
#             max = Math.max(max, dp[i]);
#         }
#         return max;
#     }

#     public static void main(String[] args) {
#         int[] arr = {3, 4, 5, 10};
#         System.out.println("Maximum sum of increasing subsequence is: " + maxSumIS(arr));
#     }
# }
# EOF

# cat > dp_longestIncSubseq_dsa.java <<EOF
# // 8. DP: Find the Longest Increasing Subsequence
# public class dp_longestIncSubseq_dsa {
#     public static int longestIncSubseq(int[] arr) {
#         int n = arr.length;
#         int[] dp = new int[n];
#         dp[0] = 1;
#         for (int i = 1; i < n; i++) {
#             dp[i] = 1;
#             for (int j = 0; j < i; j++) {
#                 if (arr[i] > arr[j] && dp[i] < dp[j] + 1) {
#                     dp[i] = dp[j] + 1;
#                 }
#             }
#         }
#         int max = dp[0];
#         for (int i = 1; i < n; i++) {
#             max = Math.max(max, dp[i]);
#         }
#         return max;
#     }

#     public static void main(String[] args) {
#         int[] arr = {10, 9, 2, 5, 3, 7, 101, 18};
#         System.out.println("Length of Longest Increasing Subsequence is: " + longestIncSubseq(arr));
#     }
# }
# EOF

# cat > dp_matrixChainMultiplication_dsa.java <<EOF
# // 9. DP: Solve the Matrix Chain Multiplication Problem
# public class dp_matrixChainMultiplication_dsa {
#     public static int matrixChainMultiplication(int[] dims) {
#         int n = dims.length;
#         int[][] dp = new int[n][n];
        
#         for (int len = 2; len < n; len++) {
#             for (int i = 1; i < n - len + 1; i++) {
#                 int j = i + len - 1;
#                 dp[i][j] = Integer.MAX_VALUE;
#                 for (int k = i; k < j; k++) {
#                     dp[i][j] = Math.min(dp[i][j], dp[i][k] + dp[k + 1][j] + dims[i - 1] * dims[k] * dims[j]);
#                 }
#             }
#         }
#         return dp[1][n - 1];
#     }

#     public static void main(String[] args) {
#         int[] dims = {1, 2, 3, 4};
#         System.out.println("Minimum number of multiplications needed: " + matrixChainMultiplication(dims));
#     }
# }
# EOF

# cat > dp_partitionSubset_dsa.java <<EOF
# // 10. DP: Find the Number of Ways to Partition a Set Into Two Subsets with Equal Sum
# public class dp_partitionSubset_dsa {
#     public static boolean canPartition(int[] nums) {
#         int sum = 0;
#         for (int num : nums) {
#             sum += num;
#         }
#         if (sum % 2 != 0) return false;
        
#         sum /= 2;
#         boolean[] dp = new boolean[sum + 1];
#         dp[0] = true;
        
#         for (int num : nums) {
#             for (int i = sum; i >= num; i--) {
#                 dp[i] = dp[i] || dp[i - num];
#             }
#         }
#         return dp[sum];
#     }

#     public static void main(String[] args) {
#         int[] nums = {1, 5, 11, 5};
#         System.out.println("Can partition: " + canPartition(nums));
#     }
# }
# EOF


cat > backtracking_nQueens_dsa.java <<EOF
// 1. Backtracking: Solve the N-Queens Problem
public class backtracking_nQueens_dsa {
    static int N = 4;
    static void printSolution(int[][] board) {
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++)
                System.out.print(board[i][j] + " ");
            System.out.println();
        }
    }

    static boolean isSafe(int[][] board, int row, int col) {
        for (int i = 0; i < col; i++)
            if (board[row][i] == 1)
                return false;
        for (int i = row, j = col; i >= 0 && j >= 0; i--, j--)
            if (board[i][j] == 1)
                return false;
        for (int i = row, j = col; j >= 0 && i < N; i++, j--)
            if (board[i][j] == 1)
                return false;
        return true;
    }

    static boolean solveNQUtil(int[][] board, int col) {
        if (col >= N)
            return true;
        for (int i = 0; i < N; i++) {
            if (isSafe(board, i, col)) {
                board[i][col] = 1;
                if (solveNQUtil(board, col + 1))
                    return true;
                board[i][col] = 0;
            }
        }
        return false;
    }

    public static void main(String[] args) {
        int[][] board = new int[N][N];
        if (solveNQUtil(board, 0) == false) {
            System.out.print("Solution does not exist");
            return;
        }
        printSolution(board);
    }
}
EOF

cat > backtracking_subsets_dsa.java <<EOF
// 2. Backtracking: Generate All Subsets of a Set
import java.util.*;
public class backtracking_subsets_dsa {
    public static void generateSubsets(int[] nums, int index, List<Integer> current, List<List<Integer>> result) {
        result.add(new ArrayList<>(current));
        for (int i = index; i < nums.length; i++) {
            current.add(nums[i]);
            generateSubsets(nums, i + 1, current, result);
            current.remove(current.size() - 1);
        }
    }

    public static void main(String[] args) {
        int[] nums = {1, 2, 3};
        List<List<Integer>> result = new ArrayList<>();
        generateSubsets(nums, 0, new ArrayList<>(), result);
        System.out.println(result);
    }
}
EOF

cat > backtracking_permutations_dsa.java <<EOF
// 3. Backtracking: Generate All Permutations of a String or Array
import java.util.*;
public class backtracking_permutations_dsa {
    public static void permute(int[] nums, int index, List<List<Integer>> result) {
        if (index == nums.length) {
            List<Integer> current = new ArrayList<>();
            for (int num : nums)
                current.add(num);
            result.add(current);
            return;
        }
        for (int i = index; i < nums.length; i++) {
            swap(nums, index, i);
            permute(nums, index + 1, result);
            swap(nums, index, i);
        }
    }

    private static void swap(int[] nums, int i, int j) {
        int temp = nums[i];
        nums[i] = nums[j];
        nums[j] = temp;
    }

    public static void main(String[] args) {
        int[] nums = {1, 2, 3};
        List<List<Integer>> result = new ArrayList<>();
        permute(nums, 0, result);
        System.out.println(result);
    }
}
EOF

cat > backtracking_subsetSum_dsa.java <<EOF
// 4. Backtracking: Solve the Subset Sum Problem
import java.util.*;
public class backtracking_subsetSum_dsa {
    public static boolean subsetSum(int[] nums, int target, int index) {
        if (target == 0)
            return true;
        if (index == nums.length || target < 0)
            return false;
        if (subsetSum(nums, target - nums[index], index + 1))
            return true;
        return subsetSum(nums, target, index + 1);
    }

    public static void main(String[] args) {
        int[] nums = {3, 34, 4, 12, 5, 2};
        int target = 9;
        if (subsetSum(nums, target, 0))
            System.out.println("Subset with given sum found");
        else
            System.out.println("No subset with given sum");
    }
}
EOF

cat > backtracking_combinationSum_dsa.java <<EOF
// 5. Backtracking: Solve the Combination Sum Problem
import java.util.*;
public class backtracking_combinationSum_dsa {
    public static void combinationSum(int[] candidates, int target, int start, List<Integer> current, List<List<Integer>> result) {
        if (target == 0) {
            result.add(new ArrayList<>(current));
            return;
        }
        for (int i = start; i < candidates.length; i++) {
            if (i > start && candidates[i] == candidates[i - 1]) continue;
            if (candidates[i] > target) break;
            current.add(candidates[i]);
            combinationSum(candidates, target - candidates[i], i + 1, current, result);
            current.remove(current.size() - 1);
        }
    }

    public static void main(String[] args) {
        int[] candidates = {10, 1, 2, 7, 6, 5};
        int target = 8;
        Arrays.sort(candidates);
        List<List<Integer>> result = new ArrayList<>();
        combinationSum(candidates, target, 0, new ArrayList<>(), result);
        System.out.println(result);
    }
}
EOF

cat > backtracking_sudokuSolver_dsa.java <<EOF
// 6. Backtracking: Solve the Sudoku Puzzle
public class backtracking_sudokuSolver_dsa {
    static final int N = 9;
    static boolean isSafe(int[][] board, int row, int col, int num) {
        for (int x = 0; x < N; x++) {
            if (board[row][x] == num || board[x][col] == num)
                return false;
        }
        int startRow = row - row % 3, startCol = col - col % 3;
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                if (board[i + startRow][j + startCol] == num)
                    return false;
            }
        }
        return true;
    }

    static boolean solveSudoku(int[][] board) {
        for (int row = 0; row < N; row++) {
            for (int col = 0; col < N; col++) {
                if (board[row][col] == 0) {
                    for (int num = 1; num <= N; num++) {
                        if (isSafe(board, row, col, num)) {
                            board[row][col] = num;
                            if (solveSudoku(board))
                                return true;
                            board[row][col] = 0;
                        }
                    }
                    return false;
                }
            }
        }
        return true;
    }

    static void printBoard(int[][] board) {
        for (int r = 0; r < N; r++) {
            for (int d = 0; d < N; d++) {
                System.out.print(board[r][d]);
                System.out.print(" ");
            }
            System.out.print("\n");
        }
    }

    public static void main(String[] args) {
        int[][] board = new int[][] {
            {5, 3, 0, 0, 7, 0, 0, 0, 0},
            {6, 0, 0, 1, 9, 5, 0, 0, 0},
            {0, 9, 8, 0, 0, 0, 0, 6, 0},
            {8, 0, 0, 0, 6, 0, 0, 0, 3},
            {4, 0, 0, 8, 0, 3, 0, 0, 1},
            {7, 0, 0, 0, 2, 0, 0, 0, 6},
            {0, 6, 0, 0, 0, 0, 2, 8, 0},
            {0, 0, 0, 4, 1, 9, 0, 0, 5},
            {0, 0, 0, 0, 8, 0, 0, 7, 9}
        };
        if (solveSudoku(board))
            printBoard(board);
        else
            System.out.println("No solution exists");
    }
}
EOF

cat > backtracking_ratInMaze_dsa.java <<EOF
// 7. Backtracking: Solve the Rat in a Maze Problem
public class backtracking_ratInMaze_dsa {
    static final int N = 4;
    static boolean isSafe(int[][] maze, int x, int y) {
        return (x >= 0 && x < N && y >= 0 && y < N && maze[x][y] == 1);
    }

    static boolean solveMazeUtil(int[][] maze, int x, int y, int[][] sol) {
        if (x == N - 1 && y == N - 1 && maze[x][y] == 1) {
            sol[x][y] = 1;
            return true;
        }
        if (isSafe(maze, x, y)) {
            if (sol[x][y] == 1)
                return false;
            sol[x][y] = 1;
            if (solveMazeUtil(maze, x + 1, y, sol))
                return true;
            if (solveMazeUtil(maze, x, y + 1, sol))
                return true;
            sol[x][y] = 0;
            return false;
        }
        return false;
    }

    static boolean solveMaze(int[][] maze) {
        int[][] sol = new int[N][N];
        if (!solveMazeUtil(maze, 0, 0, sol)) {
            System.out.println("Solution doesn't exist");
            return false;
        }
        printSolution(sol);
        return true;
    }

    static void printSolution(int[][] sol) {
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++)
                System.out.print(" " + sol[i][j] + " ");
            System.out.println();
        }
    }

    public static void main(String[] args) {
        int[][] maze = new int[][] {
            {1, 0, 0, 0},
            {1, 1, 0, 1},
            {0, 1, 0, 0},
            {1, 1, 1, 1}
        };
        solveMaze(maze);
    }
}
EOF

cat > backtracking_ratInMaze_dsa.java <<EOF
// 8. Backtracking: Solve the Rat in a Maze Problem
public class backtracking_ratInMaze_dsa {
    static final int N = 4;
    static boolean isSafe(int[][] maze, int x, int y, int[][] sol) {
        return (x >= 0 && y >= 0 && x < N && y < N && maze[x][y] == 1 && sol[x][y] == 0);
    }

    static boolean solveMazeUtil(int[][] maze, int x, int y, int[][] sol) {
        if (x == N - 1 && y == N - 1) {
            sol[x][y] = 1;
            return true;
        }
        if (isSafe(maze, x, y, sol)) {
            sol[x][y] = 1;
            if (solveMazeUtil(maze, x + 1, y, sol))
                return true;
            if (solveMazeUtil(maze, x, y + 1, sol))
                return true;
            sol[x][y] = 0;
        }
        return false;
    }

    static void printSolution(int[][] sol) {
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++)
                System.out.print(sol[i][j] + " ");
            System.out.println();
        }
    }

    public static void main(String[] args) {
        int[][] maze = new int[][] {
            {1, 0, 0, 0},
            {1, 1, 0, 1},
            {0, 1, 0, 0},
            {1, 1, 1, 1}
        };
        int[][] sol = new int[N][N];
        if (solveMazeUtil(maze, 0, 0, sol) == false) {
            System.out.println("Solution doesn't exist");
            return;
        }
        printSolution(sol);
    }
}
EOF

cat > backtracking_hamiltonianPath_dsa.java <<EOF
// 9. Backtracking: Find All Hamiltonian Paths in a Graph
import java.util.*;
public class backtracking_hamiltonianPath_dsa {
    static int V = 5;
    static void printSolution(int[] path) {
        for (int i = 0; i < V; i++)
            System.out.print(path[i] + " ");
        System.out.println();
    }

    static boolean isSafe(int v, int[][] graph, int[] path, int pos) {
        if (graph[path[pos - 1]][v] == 0)
            return false;
        for (int i = 0; i < pos; i++)
            if (path[i] == v)
                return false;
        return true;
    }

    static void hamiltonianCycleUtil(int[][] graph, int[] path, int pos) {
        if (pos == V) {
            if (graph[path[pos - 1]][path[0]] == 1)
                printSolution(path);
            return;
        }
        for (int v = 1; v < V; v++) {
            if (isSafe(v, graph, path, pos)) {
                path[pos] = v;
                hamiltonianCycleUtil(graph, path, pos + 1);
                path[pos] = -1;
            }
        }
    }

    public static void main(String[] args) {
        int[][] graph = new int[][] {
            {0, 1, 0, 1, 0},
            {1, 0, 1, 1, 1},
            {0, 1, 0, 1, 0},
            {1, 1, 1, 0, 1},
            {0, 1, 0, 1, 0}
        };
        int[] path = new int[V];
        Arrays.fill(path, -1);
        path[0] = 0;
        hamiltonianCycleUtil(graph, path, 1);
    }
}
EOF

cat > backtracking_wordSearch_dsa.java <<EOF
// 10. Backtracking: Solve the Word Search Problem in a 2D Board
public class backtracking_wordSearch_dsa {
    static int[] row = {-1, 1, 0, 0};
    static int[] col = {0, 0, -1, 1};
    static boolean isSafe(char[][] board, int x, int y, boolean[][] visited) {
        return (x >= 0 && y >= 0 && x < board.length && y < board[0].length && !visited[x][y]);
    }

    static void searchWord(char[][] board, String word, int index, int x, int y, boolean[][] visited) {
        if (index == word.length()) {
            System.out.println("Word found");
            return;
        }
        if (!isSafe(board, x, y, visited))
            return;
        if (board[x][y] != word.charAt(index))
            return;
        visited[x][y] = true;
        for (int dir = 0; dir < 4; dir++) {
            int newX = x + row[dir];
            int newY = y + col[dir];
            searchWord(board, word, index + 1, newX, newY, visited);
        }
        visited[x][y] = false;
    }

    public static void main(String[] args) {
        char[][] board = {
            {'A', 'B', 'C', 'E'},
            {'S', 'F', 'C', 'S'},
            {'A', 'D', 'E', 'E'}
        };
        String word = "ABCCED";
        boolean[][] visited = new boolean[board.length][board[0].length];
        for (int i = 0; i < board.length; i++) {
            for (int j = 0; j < board[0].length; j++) {
                searchWord(board, word, 0, i, j, visited);
            }
        }
    }
}
EOF

 


