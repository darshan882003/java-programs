// 7. DP: Find the Maximum Sum Increasing Subsequence
public class dp_maxSumIncSubseq_dsa {
    public static int maxSumIS(int[] arr) {
        int n = arr.length;
        int[] dp = new int[n];
        dp[0] = arr[0];
        for (int i = 1; i < n; i++) {
            dp[i] = arr[i];
            for (int j = 0; j < i; j++) {
                if (arr[i] > arr[j] && dp[i] < dp[j] + arr[i]) {
                    dp[i] = dp[j] + arr[i];
                }
            }
        }
        int max = dp[0];
        for (int i = 1; i < n; i++) {
            max = Math.max(max, dp[i]);
        }
        return max;
    }

    public static void main(String[] args) {
        int[] arr = {3, 4, 5, 10};
        System.out.println("Maximum sum of increasing subsequence is: " + maxSumIS(arr));
    }
}
