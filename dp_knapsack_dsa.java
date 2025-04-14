// 2. DP: Solve the 0/1 Knapsack Problem
public class dp_knapsack_dsa {
    public static int knapsack(int[] weights, int[] values, int W) {
        int n = weights.length;
        int[][] dp = new int[n + 1][W + 1];
        for (int i = 1; i <= n; i++) {
            for (int w = 1; w <= W; w++) {
                if (weights[i - 1] <= w) {
                    dp[i][w] = Math.max(dp[i - 1][w], values[i - 1] + dp[i - 1][w - weights[i - 1]]);
                } else {
                    dp[i][w] = dp[i - 1][w];
                }
            }
        }
        return dp[n][W];
    }

    public static void main(String[] args) {
        int[] weights = {1, 2, 3};
        int[] values = {60, 100, 120};
        int W = 5;
        System.out.println("Maximum value in knapsack: " + knapsack(weights, values, W));
    }
}
