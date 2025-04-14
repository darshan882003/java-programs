// 8. Backtracking: Solve the Rat in a Maze Problem
public class backtracking_ratInMaze_dsa {
    static final int N = 4;
    static boolean isSafe(int[][] maze, int x, int y, int[][] sol) {
        return (x >= 0 && y >= 0 && x < N && y < N && maze[x][y] == 1 && sol[x][y] == 0);
    }

    static boolean solveMazeUtil(int[][] maze, int x, int y, int[][] sol) {
        if (x == N - 1 && y == N - 1) {
            sol[x][y] = 1;
            return true;
        }
        if (isSafe(maze, x, y, sol)) {
            sol[x][y] = 1;
            if (solveMazeUtil(maze, x + 1, y, sol))
                return true;
            if (solveMazeUtil(maze, x, y + 1, sol))
                return true;
            sol[x][y] = 0;
        }
        return false;
    }

    static void printSolution(int[][] sol) {
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++)
                System.out.print(sol[i][j] + " ");
            System.out.println();
        }
    }

    public static void main(String[] args) {
        int[][] maze = new int[][] {
            {1, 0, 0, 0},
            {1, 1, 0, 1},
            {0, 1, 0, 0},
            {1, 1, 1, 1}
        };
        int[][] sol = new int[N][N];
        if (solveMazeUtil(maze, 0, 0, sol) == false) {
            System.out.println("Solution doesn't exist");
            return;
        }
        printSolution(sol);
    }
}
