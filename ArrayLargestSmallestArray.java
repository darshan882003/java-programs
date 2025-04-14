// Program 1: Find the Largest and Smallest Element in an Array
import java.util.Scanner;

public class ArrayLargestSmallestArray {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter number of elements: ");
        int n = scanner.nextInt();
        int[] arr = new int[n];
        System.out.println("Enter " + n + " integers:");
        for (int i = 0; i < n; i++) {
            arr[i] = scanner.nextInt();
        }
        int largest = arr[0];
        int smallest = arr[0];
        for (int i = 1; i < n; i++) {
            if (arr[i] > largest)
                largest = arr[i];
            if (arr[i] < smallest)
                smallest = arr[i];
        }
        System.out.println("Largest: " + largest);
        System.out.println("Smallest: " + smallest);
        scanner.close();
    }
}
