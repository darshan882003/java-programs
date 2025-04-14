// 4. Backtracking: Solve the Subset Sum Problem
import java.util.*;
public class backtracking_subsetSum_dsa {
    public static boolean subsetSum(int[] nums, int target, int index) {
        if (target == 0)
            return true;
        if (index == nums.length || target < 0)
            return false;
        if (subsetSum(nums, target - nums[index], index + 1))
            return true;
        return subsetSum(nums, target, index + 1);
    }

    public static void main(String[] args) {
        int[] nums = {3, 34, 4, 12, 5, 2};
        int target = 9;
        if (subsetSum(nums, target, 0))
            System.out.println("Subset with given sum found");
        else
            System.out.println("No subset with given sum");
    }
}
