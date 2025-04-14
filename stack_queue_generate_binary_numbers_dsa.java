// Stack and Queue: Generate Binary Numbers from 1 to N using a Queue
import java.util.LinkedList;
import java.util.Queue;

public class stack_queue_generate_binary_numbers_dsa {
    public static void generateBinaryNumbers(int n) {
        Queue<String> queue = new LinkedList<>();
        queue.add("1");
        for (int i = 0; i < n; i++) {
            String s = queue.remove();
            System.out.println(s);
            queue.add(s + "0");
            queue.add(s + "1");
        }
    }
}
