// 9. DP: Solve the Matrix Chain Multiplication Problem
public class dp_matrixChainMultiplication_dsa {
    public static int matrixChainMultiplication(int[] dims) {
        int n = dims.length;
        int[][] dp = new int[n][n];
        
        for (int len = 2; len < n; len++) {
            for (int i = 1; i < n - len + 1; i++) {
                int j = i + len - 1;
                dp[i][j] = Integer.MAX_VALUE;
                for (int k = i; k < j; k++) {
                    dp[i][j] = Math.min(dp[i][j], dp[i][k] + dp[k + 1][j] + dims[i - 1] * dims[k] * dims[j]);
                }
            }
        }
        return dp[1][n - 1];
    }

    public static void main(String[] args) {
        int[] dims = {1, 2, 3, 4};
        System.out.println("Minimum number of multiplications needed: " + matrixChainMultiplication(dims));
    }
}
