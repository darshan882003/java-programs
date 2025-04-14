// 5. DP: Find the Number of Ways to Reach the nth Stair When Taking 1 or 2 Steps at a Time
public class dp_stairs_dsa {
    public static int countWays(int n) {
        int[] dp = new int[n + 1];
        dp[0] = 1;
        dp[1] = 1;
        for (int i = 2; i <= n; i++) {
            dp[i] = dp[i - 1] + dp[i - 2];
        }
        return dp[n];
    }

    public static void main(String[] args) {
        int n = 5; // Example: Find the number of ways to reach the 5th stair
        System.out.println("Number of ways to reach the " + n + "th stair: " + countWays(n));
    }
}
