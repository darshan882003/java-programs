// Program 4: Find the "Kth" Largest Element in an Array
import java.util.*;

public class kth_largest_element_dsa {
    public static int findKthLargest(int[] nums, int k) {
        Arrays.sort(nums);
        return nums[nums.length - k];
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter number of elements: ");
        int n = scanner.nextInt();
        int[] arr = new int[n];
        System.out.println("Enter " + n + " integers:");
        for (int i = 0; i < n; i++) {
            arr[i] = scanner.nextInt();
        }
        System.out.print("Enter value of k: ");
        int k = scanner.nextInt();
        System.out.println("The " + k + "th largest element is: " + findKthLargest(arr, k));
        scanner.close();
    }
}
