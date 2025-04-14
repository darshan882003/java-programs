// Stack and Queue: Implement a Circular Queue
public class stack_queue_circular_queue_dsa {
    static class CircularQueue {
        private int size, front, rear;
        private int[] queue;

        public CircularQueue(int size) {
            this.size = size;
            queue = new int[size];
            front = rear = -1;
        }

        public void enqueue(int value) {
            if ((rear + 1) % size == front) {
                System.out.println("Queue is full");
                return;
            }
            if (front == -1) front = 0;
            rear = (rear + 1) % size;
            queue[rear] = value;
        }

        public int dequeue() {
            if (front == -1) {
                System.out.println("Queue is empty");
                return -1;
            }
            int data = queue[front];
            if (front == rear) {
                front = rear = -1;
            } else {
                front = (front + 1) % size;
            }
            return data;
        }
    }
}
