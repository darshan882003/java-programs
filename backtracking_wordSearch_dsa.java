// 10. Backtracking: Solve the Word Search Problem in a 2D Board
public class backtracking_wordSearch_dsa {
    static int[] row = {-1, 1, 0, 0};
    static int[] col = {0, 0, -1, 1};
    static boolean isSafe(char[][] board, int x, int y, boolean[][] visited) {
        return (x >= 0 && y >= 0 && x < board.length && y < board[0].length && !visited[x][y]);
    }

    static void searchWord(char[][] board, String word, int index, int x, int y, boolean[][] visited) {
        if (index == word.length()) {
            System.out.println("Word found");
            return;
        }
        if (!isSafe(board, x, y, visited))
            return;
        if (board[x][y] != word.charAt(index))
            return;
        visited[x][y] = true;
        for (int dir = 0; dir < 4; dir++) {
            int newX = x + row[dir];
            int newY = y + col[dir];
            searchWord(board, word, index + 1, newX, newY, visited);
        }
        visited[x][y] = false;
    }

    public static void main(String[] args) {
        char[][] board = {
            {'A', 'B', 'C', 'E'},
            {'S', 'F', 'C', 'S'},
            {'A', 'D', 'E', 'E'}
        };
        String word = "ABCCED";
        boolean[][] visited = new boolean[board.length][board[0].length];
        for (int i = 0; i < board.length; i++) {
            for (int j = 0; j < board[0].length; j++) {
                searchWord(board, word, 0, i, j, visited);
            }
        }
    }
}
