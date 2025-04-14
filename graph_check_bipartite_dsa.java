// Graph: Check if a graph is bipartite
import java.util.*;

public class graph_check_bipartite_dsa {
    static boolean isBipartite(int[][] graph, int V) {
        int[] colors = new int[V];
        Arrays.fill(colors, -1);
        for (int i = 0; i < V; i++) {
            if (colors[i] == -1) {
                if (!bfsCheck(graph, i, colors))
                    return false;
            }
        }
        return true;
    }

    static boolean bfsCheck(int[][] graph, int src, int[] colors) {
        Queue<Integer> queue = new LinkedList<>();
        queue.add(src);
        colors[src] = 0;
        while (!queue.isEmpty()) {
            int u = queue.poll();
            for (int v = 0; v < graph.length; v++) {
                if (graph[u][v] == 1) {
                    if (colors[v] == -1) {
                        colors[v] = 1 - colors[u];
                        queue.add(v);
                    } else if (colors[v] == colors[u]) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public static void main(String[] args) {
        int[][] graph = {
            {0, 1, 0, 1},
            {1, 0, 1, 0},
            {0, 1, 0, 1},
            {1, 0, 1, 0}
        };
        int V = 4;
        System.out.println("Is the graph bipartite? " + isBipartite(graph, V));
    }
}
