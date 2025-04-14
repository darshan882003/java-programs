// 3. Backtracking: Generate All Permutations of a String or Array
import java.util.*;
public class backtracking_permutations_dsa {
    public static void permute(int[] nums, int index, List<List<Integer>> result) {
        if (index == nums.length) {
            List<Integer> current = new ArrayList<>();
            for (int num : nums)
                current.add(num);
            result.add(current);
            return;
        }
        for (int i = index; i < nums.length; i++) {
            swap(nums, index, i);
            permute(nums, index + 1, result);
            swap(nums, index, i);
        }
    }

    private static void swap(int[] nums, int i, int j) {
        int temp = nums[i];
        nums[i] = nums[j];
        nums[j] = temp;
    }

    public static void main(String[] args) {
        int[] nums = {1, 2, 3};
        List<List<Integer>> result = new ArrayList<>();
        permute(nums, 0, result);
        System.out.println(result);
    }
}
