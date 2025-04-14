// Stack and Queue: Evaluate a Postfix Expression
import java.util.Stack;

public class stack_queue_postfix_evaluation_dsa {
    public static int evaluatePostfix(String expr) {
        Stack<Integer> stack = new Stack<>();
        for (char ch : expr.toCharArray()) {
            if (Character.isDigit(ch)) {
                stack.push(ch - '0');
            } else {
                int val2 = stack.pop();
                int val1 = stack.pop();
                switch (ch) {
                    case '+': stack.push(val1 + val2); break;
                    case '-': stack.push(val1 - val2); break;
                    case '*': stack.push(val1 * val2); break;
                    case '/': stack.push(val1 / val2); break;
                }
            }
        }
        return stack.pop();
    }
}
