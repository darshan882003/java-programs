// Stack and Queue: Implement a Stack using Arrays
public class stack_queue_stack_array_dsa {
    static class Stack {
        private int maxSize;
        private int[] stackArray;
        private int top;

        public Stack(int size) {
            maxSize = size;
            stackArray = new int[maxSize];
            top = -1;
        }

        public void push(int value) {
            if (top == maxSize - 1) {
                System.out.println("Stack overflow");
                return;
            }
            stackArray[++top] = value;
        }

        public int pop() {
            if (top == -1) {
                System.out.println("Stack underflow");
                return -1;
            }
            return stackArray[top--];
        }

        public int peek() {
            if (top == -1) {
                System.out.println("Stack is empty");
                return -1;
            }
            return stackArray[top];
        }

        public boolean isEmpty() {
            return top == -1;
        }
    }
}
