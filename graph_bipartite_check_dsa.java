// Graph: Check if a Graph is Bipartite using BFS
import java.util.*;

public class graph_bipartite_check_dsa {
    private int V;
    private List<List<Integer>> adj;

    public graph_bipartite_check_dsa(int V) {
        this.V = V;
        adj = new ArrayList<>();
        for (int i = 0; i < V; i++)
            adj.add(new ArrayList<>());
    }

    public void addEdge(int u, int v) {
        adj.get(u).add(v);
        adj.get(v).add(u); // For undirected graph
    }

    public boolean isBipartite() {
        int[] colors = new int[V];
        Arrays.fill(colors, -1);
        for (int i = 0; i < V; i++) {
            if (colors[i] == -1) {
                if (!bfsCheck(i, colors))
                    return false;
            }
        }
        return true;
    }

    private boolean bfsCheck(int src, int[] colors) {
        Queue<Integer> queue = new LinkedList<>();
        queue.add(src);
        colors[src] = 0;
        while (!queue.isEmpty()) {
            int u = queue.poll();
            for (int v : adj.get(u)) {
                if (colors[v] == -1) {
                    colors[v] = 1 - colors[u];
                    queue.add(v);
                } else if (colors[v] == colors[u]) {
                    return false;
                }
            }
        }
        return true;
    }

    public static void main(String[] args) {
        graph_bipartite_check_dsa g = new graph_bipartite_check_dsa(4);
        g.addEdge(0, 1);
        g.addEdge(1, 2);
        g.addEdge(2, 3);
        g.addEdge(3, 0);
        System.out.println("Graph is bipartite: " + g.isBipartite());
    }
}
