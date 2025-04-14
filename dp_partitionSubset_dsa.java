// 10. DP: Find the Number of Ways to Partition a Set Into Two Subsets with Equal Sum
public class dp_partitionSubset_dsa {
    public static boolean canPartition(int[] nums) {
        int sum = 0;
        for (int num : nums) {
            sum += num;
        }
        if (sum % 2 != 0) return false;
        
        sum /= 2;
        boolean[] dp = new boolean[sum + 1];
        dp[0] = true;
        
        for (int num : nums) {
            for (int i = sum; i >= num; i--) {
                dp[i] = dp[i] || dp[i - num];
            }
        }
        return dp[sum];
    }

    public static void main(String[] args) {
        int[] nums = {1, 5, 11, 5};
        System.out.println("Can partition: " + canPartition(nums));
    }
}
