// Graph: Find the Number of Connected Components in an Undirected Graph
import java.util.*;

public class graph_connected_components_dsa {
    private int V;
    private List<List<Integer>> adj;

    public graph_connected_components_dsa(int V) {
        this.V = V;
        adj = new ArrayList<>();
        for (int i = 0; i < V; i++)
            adj.add(new ArrayList<>());
    }

    public void addEdge(int u, int v) {
        adj.get(u).add(v);
        adj.get(v).add(u); // For undirected graph
    }

    private void DFSUtil(int v, boolean[] visited) {
        visited[v] = true;
        for (int neighbor : adj.get(v))
            if (!visited[neighbor])
                DFSUtil(neighbor, visited);
    }

    public int countConnectedComponents() {
        boolean[] visited = new boolean[V];
        int count = 0;
        for (int i = 0; i < V; i++) {
            if (!visited[i]) {
                DFSUtil(i, visited);
                count++;
            }
        }
        return count;
    }

    public static void main(String[] args) {
        graph_connected_components_dsa g = new graph_connected_components_dsa(5);
        g.addEdge(0, 1);
        g.addEdge(1, 2);
        g.addEdge(3, 4);

        System.out.println("Number of connected components: " + g.countConnectedComponents());
    }
}
