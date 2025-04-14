// Stack and Queue: Implement a Priority Queue
import java.util.PriorityQueue;

public class stack_queue_priority_queue_dsa {
    public static void main(String[] args) {
        PriorityQueue<Integer> pq = new PriorityQueue<>();
        pq.add(10);
        pq.add(5);
        pq.add(20);
        while (!pq.isEmpty()) {
            System.out.println(pq.poll());
        }
    }
}
