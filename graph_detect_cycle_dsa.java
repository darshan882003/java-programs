// Graph: Detect a cycle in a directed and undirected graph
import java.util.*;

public class graph_detect_cycle_dsa {
    private int V;
    private List<List<Integer>> adj;

    public graph_detect_cycle_dsa(int V) {
        this.V = V;
        adj = new ArrayList<>();
        for (int i = 0; i < V; i++)
            adj.add(new ArrayList<>());
    }

    // Function to add an edge into the graph
    public void addEdge(int u, int v) {
        adj.get(u).add(v);
        adj.get(v).add(u); // For undirected graph
    }

    // Function to detect cycle in an undirected graph using DFS
    private boolean isCyclicUtil(int v, boolean[] visited, int parent) {
        visited[v] = true;
        for (int i : adj.get(v)) {
            if (!visited[i]) {
                if (isCyclicUtil(i, visited, v))
                    return true;
            } else if (i != parent)
                return true;
        }
        return false;
    }

    public boolean isCyclicUndirected() {
        boolean[] visited = new boolean[V];
        for (int u = 0; u < V; u++)
            if (!visited[u])
                if (isCyclicUtil(u, visited, -1))
                    return true;
        return false;
    }

    // Function to detect cycle in a directed graph using DFS
    private boolean isCyclicDirectedUtil(int v, boolean[] visited, boolean[] recStack) {
        if (recStack[v])
            return true;
        if (visited[v])
            return false;
        visited[v] = true;
        recStack[v] = true;
        for (int neighbor : adj.get(v))
            if (isCyclicDirectedUtil(neighbor, visited, recStack))
                return true;
        recStack[v] = false;
        return false;
    }

    public boolean isCyclicDirected() {
        boolean[] visited = new boolean[V];
        boolean[] recStack = new boolean[V];
        for (int i = 0; i < V; i++)
            if (isCyclicDirectedUtil(i, visited, recStack))
                return true;
        return false;
    }

    public static void main(String[] args) {
        // Undirected graph example
        graph_detect_cycle_dsa g1 = new graph_detect_cycle_dsa(5);
        g1.addEdge(0, 1);
        g1.addEdge(1, 2);
        g1.addEdge(2, 3);
        g1.addEdge(3, 4);
        g1.addEdge(4, 1); // Adding a cycle
        System.out.println("Undirected graph contains cycle: " + g1.isCyclicUndirected());

        // Directed graph example
        graph_detect_cycle_dsa g2 = new graph_detect_cycle_dsa(4);
        g2.adj.get(0).add(1);
        g2.adj.get(1).add(2);
        g2.adj.get(2).add(3);
        g2.adj.get(3).add(1); // Adding a cycle
        System.out.println("Directed graph contains cycle: " + g2.isCyclicDirected());
    }
}
