// Stack and Queue: Check for Balanced Parentheses in an Expression
import java.util.Stack;

public class stack_queue_balanced_parentheses_dsa {
    public static boolean isBalanced(String expr) {
        Stack<Character> stack = new Stack<>();
        for (char ch : expr.toCharArray()) {
            if (ch == '(' || ch == '{' || ch == '[') {
                stack.push(ch);
            } else if (ch == ')' && !stack.isEmpty() && stack.peek() == '(') {
                stack.pop();
            } else if (ch == '}' && !stack.isEmpty() && stack.peek() == '{') {
                stack.pop();
            } else if (ch == ']' && !stack.isEmpty() && stack.peek() == '[') {
                stack.pop();
            } else if (ch == ')' || ch == '}' || ch == ']') {
                return false;
            }
        }
        return stack.isEmpty();
    }
}
