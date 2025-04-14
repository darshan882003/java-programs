// Graph: Find the shortest path in an unweighted graph using BFS
import java.util.*;

public class graph_shortest_path_unweighted_dsa {
    private int V; // Number of vertices
    private List<List<Integer>> adj; // Adjacency list

    public graph_shortest_path_unweighted_dsa(int V) {
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

    // Function to find the shortest path between two nodes using BFS
    public List<Integer> shortestPath(int src, int dest) {
        boolean[] visited = new boolean[V];
        int[] parent = new int[V];
        Arrays.fill(parent, -1);
        Queue<Integer> queue = new LinkedList<>();
        visited[src] = true;
        queue.add(src);

        while (!queue.isEmpty()) {
            int u = queue.poll();
            if (u == dest)
                break;
            for (int v : adj.get(u)) {
                if (!visited[v]) {
                    visited[v] = true;
                    parent[v] = u;
                    queue.add(v);
                }
            }
        }

        // Reconstruct the path from source to destination
        List<Integer> path = new ArrayList<>();
        for (int v = dest; v != -1; v = parent[v])
            path.add(v);
        Collections.reverse(path);

        // If the source is not reachable to destination
        if (path.get(0) != src)
            return new ArrayList<>(); // Return empty list

        return path;
    }

    public static void main(String[] args) {
        graph_shortest_path_unweighted_dsa g = new graph_shortest_path_unweighted_dsa(6);
        g.addEdge(0, 1);
        g.addEdge(0, 2);
        g.addEdge(1, 3);
        g.addEdge(2, 3);
        g.addEdge(3, 4);
        g.addEdge(4, 5);

        int source = 0, destination = 5;
        List<Integer> path = g.shortestPath(source, destination);

        if (path.isEmpty()) {
            System.out.println("No path exists between " + source + " and " + destination);
        } else {
            System.out.println("Shortest path from " + source + " to " + destination + ":");
            for (int node : path) {
                System.out.print(node + " ");
            }
            System.out.println();
        }
    }
}
