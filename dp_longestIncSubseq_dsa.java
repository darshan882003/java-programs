// 8. DP: Find the Longest Increasing Subsequence
public class dp_longestIncSubseq_dsa {
    public static int longestIncSubseq(int[] arr) {
        int n = arr.length;
        int[] dp = new int[n];
        dp[0] = 1;
        for (int i = 1; i < n; i++) {
            dp[i] = 1;
            for (int j = 0; j < i; j++) {
                if (arr[i] > arr[j] && dp[i] < dp[j] + 1) {
                    dp[i] = dp[j] + 1;
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
        int[] arr = {10, 9, 2, 5, 3, 7, 101, 18};
        System.out.println("Length of Longest Increasing Subsequence is: " + longestIncSubseq(arr));
    }
}
