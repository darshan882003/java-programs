// Stack and Queue: Design a Stack that Supports Push, Pop, Top, and Retrieving the Minimum Element in Constant Time
import java.util.Stack;

public class stack_queue_min_stack_dsa {
    static class MinStack {
        Stack<Integer> stack = new Stack<>();
        Stack<Integer> minStack = new Stack<>();

        public void push(int x) {
            stack.push(x);
            if (minStack.isEmpty() || x <= minStack.peek()) {
                minStack.push(x);
            }
        }

        public void pop() {
            if (stack.pop().equals(minStack.peek())) {
                minStack.pop();
            }
        }

        public int top() {
            return stack.peek();
        }

        public int getMin() {
            return minStack.peek();
        }
    }
}
