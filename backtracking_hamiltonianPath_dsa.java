// 9. Backtracking: Find All Hamiltonian Paths in a Graph
import java.util.*;
public class backtracking_hamiltonianPath_dsa {
    static int V = 5;
    static void printSolution(int[] path) {
        for (int i = 0; i < V; i++)
            System.out.print(path[i] + " ");
        System.out.println();
    }

    static boolean isSafe(int v, int[][] graph, int[] path, int pos) {
        if (graph[path[pos - 1]][v] == 0)
            return false;
        for (int i = 0; i < pos; i++)
            if (path[i] == v)
                return false;
        return true;
    }

    static void hamiltonianCycleUtil(int[][] graph, int[] path, int pos) {
        if (pos == V) {
            if (graph[path[pos - 1]][path[0]] == 1)
                printSolution(path);
            return;
        }
        for (int v = 1; v < V; v++) {
            if (isSafe(v, graph, path, pos)) {
                path[pos] = v;
                hamiltonianCycleUtil(graph, path, pos + 1);
                path[pos] = -1;
            }
        }
    }

    public static void main(String[] args) {
        int[][] graph = new int[][] {
            {0, 1, 0, 1, 0},
            {1, 0, 1, 1, 1},
            {0, 1, 0, 1, 0},
            {1, 1, 1, 0, 1},
            {0, 1, 0, 1, 0}
        };
        int[] path = new int[V];
        Arrays.fill(path, -1);
        path[0] = 0;
        hamiltonianCycleUtil(graph, path, 1);
    }
}
