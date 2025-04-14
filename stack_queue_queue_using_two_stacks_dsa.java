// Stack and Queue: Implement a Queue using Two Stacks
import java.util.Stack;

public class stack_queue_queue_using_two_stacks_dsa {
    static class Queue {
        Stack<Integer> stack1 = new Stack<>();
        Stack<Integer> stack2 = new Stack<>();

        public void enqueue(int x) {
            stack1.push(x);
        }

        public int dequeue() {
            if (stack2.isEmpty()) {
                while (!stack1.isEmpty()) {
                    stack2.push(stack1.pop());
                }
            }
            if (stack2.isEmpty()) {
                System.out.println("Queue is empty");
                return -1;
            }
            return stack2.pop();
        }

        public boolean isEmpty() {
            return stack1.isEmpty() && stack2.isEmpty();
        }
    }

    public static void main(String[] args) {
        Queue q = new Queue();
        q.enqueue(10);
        q.enqueue(20);
        q.enqueue(30);
        System.out.println(q.dequeue()); // 10
        System.out.println(q.dequeue()); // 20
        q.enqueue(40);
        System.out.println(q.dequeue()); // 30
        System.out.println(q.dequeue()); // 40
    }
}
