// Stack and Queue: Sort a Stack
import java.util.Stack;

public class stack_queue_sort_stack_dsa {
    public static void sortStack(Stack<Integer> input) {
        Stack<Integer> tempStack = new Stack<>();
        while (!input.isEmpty()) {
            int temp = input.pop();
            while (!tempStack.isEmpty() && tempStack.peek() > temp) {
                input.push(tempStack.pop());
            }
            tempStack.push(temp);
        }
        // Transfer back to input stack if needed
        while (!tempStack.isEmpty()) {
            input.push(tempStack.pop());
        }
    }

    public static void main(String[] args) {
        Stack<Integer> stack = new Stack<>();
        stack.push(34);
        stack.push(3);
        stack.push(31);
        stack.push(98);
        stack.push(92);
        stack.push(23);

        System.out.println("Original Stack: " + stack);
        sortStack(stack);
        System.out.println("Sorted Stack: " + stack);
    }
}
