// Program 10: Find the Union of Two Arrays
import java.util.*;

public class union_arrays_dsa {
    public static Set<Integer> union(int[] nums1, int[] nums2) {
        Set<Integer> result = new HashSet<>();
        for (int num : nums1) {
            result.add(num);
        }
        for (int num : nums2) {
            result.add(num);
        }
        return result;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter number of elements in first array: ");
        int n1 = scanner.nextInt();
        int[] arr1 = new int[n1];
        System.out.println("Enter " + n1 + " integers for first array:");
        for (int i = 0; i < n1; i++) {
            arr1[i] = scanner.nextInt();
        }
        System.out.print("Enter number of elements in second array: ");
        int n2 = scanner.nextInt();
        int[] arr2 = new int[n2];
        System.out.println("Enter " + n2 + " integers for second array:");
        for (int i = 0; i < n2; i++) {
            arr2[i] = scanner.nextInt();
        }
        Set<Integer> result = union(arr1, arr2);
        System.out.print("Union of the two arrays: ");
        for (int num : result) {
            System.out.print(num + " ");
        }
        System.out.println();
        scanner.close();
    }
}
